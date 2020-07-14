.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6b7c, %rsi
lea addresses_normal_ht+0xaa71, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x10984, %rsi
lea addresses_normal_ht+0xc986, %rdi
nop
nop
nop
xor %r15, %r15
mov $74, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x18324, %rsi
lea addresses_UC_ht+0x4884, %rdi
nop
nop
nop
nop
add $63782, %r12
mov $48, %rcx
rep movsl
nop
xor %r8, %r8
lea addresses_D_ht+0x1d230, %r15
nop
inc %r8
movw $0x6162, (%r15)
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x15a84, %rsi
lea addresses_A_ht+0x11e98, %rdi
clflush (%rsi)
nop
nop
cmp %r14, %r14
mov $83, %rcx
rep movsq
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x172c4, %rsi
lea addresses_WC_ht+0x8ffc, %rdi
nop
cmp $63707, %r12
mov $25, %rcx
rep movsw
sub %r15, %r15
lea addresses_normal_ht+0xe084, %rsi
lea addresses_WC_ht+0x12484, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $102, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x10884, %r14
nop
nop
inc %r13
movl $0x61626364, (%r14)
nop
nop
xor $64513, %r13
lea addresses_UC_ht+0x1c51c, %rsi
lea addresses_normal_ht+0x197f0, %rdi
cmp $33344, %r13
mov $74, %rcx
rep movsb
nop
nop
nop
sub $46885, %r15
lea addresses_UC_ht+0x3704, %rdi
nop
nop
nop
nop
dec %r12
movl $0x61626364, (%rdi)
nop
nop
inc %r15
lea addresses_D_ht+0x5384, %r12
nop
nop
nop
nop
nop
add $51595, %r14
movl $0x61626364, (%r12)
xor $30900, %rdi
lea addresses_WC_ht+0x15684, %rsi
lea addresses_A_ht+0x47d4, %rdi
nop
nop
nop
nop
dec %r15
mov $19, %rcx
rep movsq
nop
nop
sub $28556, %rdi
lea addresses_normal_ht+0xac70, %rsi
lea addresses_D_ht+0x7084, %rdi
nop
nop
cmp %r13, %r13
mov $45, %rcx
rep movsw
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rbx

// Store
lea addresses_normal+0xd504, %rbp
nop
sub %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
dec %rbx

// Store
lea addresses_UC+0x4884, %r8
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
nop
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_WC+0x3884, %r12
nop
nop
nop
nop
nop
add $53853, %r14
vmovaps (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'44': 12656, '45': 2745, '26': 11, '01': 1, '00': 5858, '48': 500, '47': 58}
00 00 44 44 44 44 00 00 44 00 00 45 00 44 44 44 00 44 00 44 44 44 44 44 44 44 00 45 00 44 44 00 45 00 44 44 45 44 00 45 44 00 45 00 44 44 00 44 00 44 44 44 48 00 44 00 44 44 45 44 44 45 44 00 44 44 44 00 44 45 00 44 45 44 48 44 00 00 44 45 45 44 00 44 48 00 45 00 44 44 44 44 00 45 44 44 00 44 44 44 44 44 44 45 47 44 44 00 45 44 48 45 44 44 44 00 00 00 44 44 44 44 00 44 44 45 00 00 44 00 00 44 44 44 44 44 44 44 44 44 44 45 45 45 00 00 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 48 44 45 45 44 44 44 45 44 44 44 00 44 00 00 45 00 45 44 44 44 44 00 44 44 44 00 44 00 44 44 44 44 48 44 45 44 00 44 00 45 44 00 45 44 44 44 44 44 00 44 44 48 44 44 00 00 44 44 00 44 00 00 44 44 00 00 44 44 44 00 44 00 44 00 44 00 00 44 44 48 00 00 45 00 44 44 00 45 44 44 44 44 44 00 44 44 45 00 45 44 00 44 44 44 00 44 00 44 00 00 44 44 44 44 44 48 44 45 44 44 44 44 45 44 45 45 00 44 45 00 44 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 45 45 44 44 48 44 00 44 44 44 00 44 00 45 44 44 44 44 44 00 44 44 45 00 44 44 44 44 00 00 44 44 00 00 00 44 00 00 00 44 44 00 44 44 00 44 44 00 44 44 00 00 00 45 44 00 44 00 44 45 00 44 00 44 44 45 44 44 44 00 44 44 00 00 44 44 44 44 00 48 00 44 00 00 44 00 00 44 44 44 45 45 00 44 00 00 00 48 44 44 44 00 44 00 44 45 44 00 00 44 00 00 44 44 45 44 44 00 00 44 45 44 00 00 00 44 44 44 00 48 44 44 00 44 44 44 44 00 44 00 44 44 00 44 45 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 00 44 44 45 44 45 44 44 44 00 44 44 00 00 44 00 44 00 44 44 44 44 00 44 00 44 44 00 00 44 44 00 45 44 45 44 44 44 44 44 44 44 44 45 44 45 45 00 44 44 44 44 44 44 00 48 45 44 44 44 44 00 44 00 44 00 44 44 45 44 45 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 00 00 44 44 00 44 44 44 45 00 44 44 44 44 44 44 44 00 00 44 00 45 44 45 44 44 00 00 44 00 44 44 44 00 45 44 44 44 48 44 44 00 44 44 00 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 45 45 44 44 44 44 44 44 44 44 00 44 44 45 44 44 44 45 44 44 44 44 44 44 00 00 44 44 45 45 00 00 44 00 00 44 00 44 00 45 44 00 44 00 44 44 45 00 44 00 00 44 45 44 45 44 45 44 45 00 44 44 00 44 44 45 44 44 44 44 44 45 00 44 44 44 45 00 44 44 00 44 44 44 48 44 44 44 44 44 00 45 44 00 44 00 00 45 44 44 44 44 44 00 45 44 44 44 45 00 44 44 00 44 45 44 44 00 44 44 44 44 44 00 44 00 44 44 44 45 44 45 44 44 48 44 48 45 44 44 00 44 44 44 48 47 00 44 44 44 44 48 48 44 44 44 44 00 44 44 44 45 44 44 44 00 00 48 00 44 00 00 00 44 00 44 44 44 44 00 00 44 00 44 44 00 44 44 44 00 44 00 44 44 44 44 00 44 00 00 44 44 45 48 44 45 44 44 44 44 44 44 45 44 45 00 44 44 45 44 44 44 45 44 44 44 00 44 45 00 45 00 44 44 44 00 00 00 44 00 00 44 00 45 00 44 45 45 44 47 44 44 44 45 44 45 00 44 48 45 00 47 44 00 44 44 00 44 45 44 00 44 44 45 44 44 44 44 00 44 45 44 00 00 00 00 44 44 44 45 44 44 44 44 44 44 44 44 45 44 00 00 44 00 44 44 44 00 45 45 00 44 44 45 44 00 44 00 45 45 44 44 45 44 45 45 44 00 44 00 00 44 44 44 44 45 00 00 44 44 48 00 00 44 44 00 00 44 44 45 44 45 44 45 44 44 44 44 00 00 00 00 44 48 00 00 00 44 00 44 00 44 45 44 00 44 00 44 00 44
*/
