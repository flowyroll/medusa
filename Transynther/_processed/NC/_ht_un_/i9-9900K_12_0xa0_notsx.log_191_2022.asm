.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a8aa, %rsi
lea addresses_WC_ht+0x30aa, %rdi
nop
nop
sub $40834, %r8
mov $123, %rcx
rep movsw
cmp %rax, %rax
lea addresses_A_ht+0x1d2a, %r10
nop
nop
nop
add %r9, %r9
mov (%r10), %rax
sub $45116, %rcx
lea addresses_UC_ht+0x3eaa, %rsi
lea addresses_A_ht+0x1ee2a, %rdi
clflush (%rsi)
clflush (%rdi)
xor $40348, %r14
mov $6, %rcx
rep movsw
and $46277, %r8
lea addresses_A_ht+0x11caa, %rsi
add $2756, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x59ea, %rsi
lea addresses_WC_ht+0x198aa, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r14, %r14
mov $94, %rcx
rep movsl
nop
nop
inc %rsi
lea addresses_WC_ht+0x168aa, %rax
sub $31538, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rax
vmovaps %ymm4, (%rax)
nop
nop
nop
nop
nop
add $51712, %rsi
lea addresses_WT_ht+0x2be, %r9
nop
nop
nop
and %rdi, %rdi
mov (%r9), %rcx
nop
nop
and $37815, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0x8e36, %r14
nop
nop
nop
nop
add $25533, %r9
movl $0x51525354, (%r14)
add $51519, %r9

// Store
lea addresses_D+0x1d36a, %rsi
nop
and %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %rsi
movaps %xmm3, (%rsi)
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_WC+0x4aa, %rsi
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovaps %ymm0, (%rsi)
nop
nop
sub $7204, %r15

// Store
lea addresses_UC+0x13aaa, %rbx
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovaps %ymm5, (%rbx)
nop
cmp $23773, %r13

// Store
lea addresses_PSE+0x159aa, %rbx
nop
nop
add %r15, %r15
movb $0x51, (%rbx)
nop
and %r15, %r15

// Load
lea addresses_WT+0xe0aa, %rbx
nop
nop
nop
dec %rsi
movb (%rbx), %r15b
nop
nop
nop
and %r9, %r9

// Faulty Load
mov $0x7f9b4800000008aa, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $59289, %r9
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'49': 189, 'ff': 2}
49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 ff 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 ff 49 49 49
*/
