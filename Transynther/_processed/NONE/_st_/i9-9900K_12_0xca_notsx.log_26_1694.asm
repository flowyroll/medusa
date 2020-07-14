.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1db37, %r12
nop
nop
inc %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0xfcf7, %rcx
nop
nop
sub $23575, %rdx
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
add $19732, %rcx
lea addresses_WC_ht+0x19037, %r14
clflush (%r14)
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%r14)
nop
nop
nop
nop
sub $59893, %rsi
lea addresses_WT_ht+0x4737, %r12
sub %r9, %r9
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x43bf, %rcx
and %r8, %r8
mov (%rcx), %r14w
nop
nop
inc %rsi
lea addresses_UC_ht+0x1dd37, %r12
nop
sub $21300, %r8
movb (%r12), %r14b
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x7447, %rsi
lea addresses_UC_ht+0x14a37, %rdi
nop
nop
nop
nop
nop
and $21966, %r14
mov $21, %rcx
rep movsb
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1e337, %rsi
lea addresses_normal_ht+0x106b7, %rdi
nop
nop
nop
nop
nop
xor $7988, %r14
mov $45, %rcx
rep movsb
add %r9, %r9
lea addresses_UC_ht+0xccf7, %r14
nop
inc %r9
mov (%r14), %rdx
nop
add $21030, %rcx
lea addresses_A_ht+0x1ce37, %r9
nop
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r9)
nop
nop
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xef37, %r8
nop
nop
nop
nop
and $64358, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r8)
nop
add $62554, %rbp

// Load
lea addresses_WT+0x181b7, %r10
clflush (%r10)
nop
add $60817, %r13
movb (%r10), %bl
nop
nop
nop
nop
nop
xor %r8, %r8

// REPMOV
lea addresses_normal+0x28c7, %rsi
lea addresses_A+0x10737, %rdi
nop
nop
nop
cmp $33275, %r8
mov $88, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r13, %r13

// Store
mov $0x328920000000d13, %rsi
nop
nop
nop
and $42101, %rbp
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0xeb37, %rsi
nop
nop
cmp $60883, %rbx
movb $0x51, (%rsi)
nop
nop
nop
xor $5418, %rsi

// Store
lea addresses_WT+0xb737, %rbp
nop
nop
nop
nop
sub $30115, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rbp)
sub $13960, %rbp

// Faulty Load
lea addresses_A+0x10737, %rdi
nop
nop
nop
nop
add $23784, %rcx
movb (%rdi), %r10b
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'34': 26}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
