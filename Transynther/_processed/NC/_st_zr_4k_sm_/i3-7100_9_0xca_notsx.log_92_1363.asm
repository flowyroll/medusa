.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xde32, %rdx
nop
nop
nop
dec %r12
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x14a02, %r9
nop
mfence
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
dec %rbx
lea addresses_A_ht+0x1d43e, %rsi
lea addresses_WC_ht+0x17f3a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
cmp $42763, %r12
mov $51, %rcx
rep movsw
nop
and $10542, %r11
lea addresses_WC_ht+0x92, %r11
clflush (%r11)
nop
and %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
and $10276, %rbx
lea addresses_UC_ht+0x18fe2, %rsi
lea addresses_WC_ht+0x3596, %rdi
nop
nop
add $8943, %rbx
mov $120, %rcx
rep movsb
nop
sub %rdx, %rdx
lea addresses_A_ht+0x1b3b2, %rsi
lea addresses_WT_ht+0x18d62, %rdi
clflush (%rdi)
xor $53472, %rdx
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
and $64922, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_A+0x157e2, %rsi
nop
and %r13, %r13
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor $46294, %rdi

// Store
lea addresses_UC+0x17978, %r11
nop
sub %rbp, %rbp
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
sub $56795, %r8

// Store
mov $0x33321400000007e2, %r13
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r13)
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0x9242, %rdi
nop
nop
nop
nop
xor $41754, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
nop
sub $4417, %r8

// Store
lea addresses_RW+0x1af42, %rsi
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rsi)
sub %r11, %r11

// Store
mov $0x2e2, %r13
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
sub %r9, %r9

// Faulty Load
mov $0x33321400000007e2, %r8
nop
nop
xor %r13, %r13
mov (%r8), %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'58': 88, '00': 4}
00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
