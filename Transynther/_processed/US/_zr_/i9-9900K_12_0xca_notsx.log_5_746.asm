.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1b686, %rsi
lea addresses_D_ht+0x19b86, %rdi
nop
nop
nop
xor $38976, %r9
mov $44, %rcx
rep movsw
nop
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x9786, %r9
nop
dec %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x17086, %r12
xor $61107, %rdx
movups (%r12), %xmm1
vpextrq $1, %xmm1, %rdi
nop
and $36387, %r13
lea addresses_A_ht+0x11ba6, %rsi
lea addresses_WC_ht+0xea38, %rdi
nop
nop
nop
inc %r9
mov $60, %rcx
rep movsb
nop
dec %r12
lea addresses_WT_ht+0x5001, %rsi
lea addresses_A_ht+0x1b146, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $21, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $30870, %rsi
lea addresses_WT_ht+0x2bc6, %rsi
lea addresses_D_ht+0x13686, %rdi
nop
nop
add $4741, %rbp
mov $26, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_normal_ht+0xe14e, %rcx
nop
nop
nop
nop
and $58864, %rbp
movb (%rcx), %r9b
nop
cmp %r12, %r12
lea addresses_normal_ht+0x19a86, %rdx
sub %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x12d06, %rsi
lea addresses_normal_ht+0x198c6, %rdi
nop
and %rbp, %rbp
mov $106, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_D_ht+0x12f06, %rdi
nop
nop
and %rdx, %rdx
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rsi
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1c306, %rdi
nop
nop
nop
nop
nop
and $14155, %r13
movl $0x61626364, (%rdi)
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdx

// Store
lea addresses_WT+0xcbe6, %rcx
dec %rbp
movw $0x5152, (%rcx)
nop
add $8727, %r14

// Faulty Load
lea addresses_US+0x1d686, %rdx
nop
nop
nop
dec %r11
mov (%rdx), %r8d
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'00': 5}
00 00 00 00 00
*/
