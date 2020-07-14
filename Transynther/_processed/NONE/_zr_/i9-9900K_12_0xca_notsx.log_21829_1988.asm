.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16a30, %rbp
nop
nop
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xcdc8, %rsi
lea addresses_WT_ht+0x1367f, %rdi
nop
nop
nop
nop
sub $29550, %r13
mov $112, %rcx
rep movsb
and $31119, %rsi
lea addresses_UC_ht+0xe4c8, %rsi
lea addresses_WT_ht+0xf52e, %rdi
nop
nop
and %r12, %r12
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x5bc8, %r12
nop
and $16114, %rsi
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x7e68, %r12
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%r12)
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x196c8, %rsi
dec %rbx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
xor $10714, %rsi
lea addresses_D_ht+0x185e8, %rsi
lea addresses_D_ht+0xc768, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r13
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $12590, %rcx
lea addresses_WC_ht+0x17dc8, %rsi
lea addresses_WC_ht+0x1d608, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $79, %rcx
rep movsb
sub $57918, %r12
lea addresses_WC_ht+0x5548, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
and $40344, %r8
lea addresses_D_ht+0x124a2, %rcx
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%rcx)
nop
add $21275, %rdi
lea addresses_WT_ht+0xc7b8, %rsi
nop
nop
nop
and $28178, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x5bc8, %rbp
nop
nop
nop
nop
add %rdi, %rdi
mov (%rbp), %r12d
and %r12, %r12
lea addresses_UC_ht+0x1efa8, %rbp
nop
nop
nop
nop
nop
cmp $40987, %rbx
mov (%rbp), %ecx
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x60c8, %rbp
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rbp), %r8
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x16108, %rsi
lea addresses_WC_ht+0x1dd64, %rdi
add %r13, %r13
mov $18, %rcx
rep movsq
nop
sub $37216, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx

// Load
lea addresses_US+0x16288, %r8
nop
nop
nop
nop
xor $3401, %rbp
movb (%r8), %bl
nop
nop
sub $41844, %rbx

// Store
lea addresses_normal+0x197c8, %rbp
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbp)
xor %r9, %r9

// Faulty Load
lea addresses_normal+0x197c8, %rcx
nop
nop
and %rax, %rax
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
