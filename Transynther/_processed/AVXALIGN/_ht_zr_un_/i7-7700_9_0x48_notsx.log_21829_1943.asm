.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14b37, %rsi
cmp %rdx, %rdx
mov (%rsi), %r12d
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x191f7, %r9
nop
nop
nop
nop
nop
sub $11846, %r15
mov (%r9), %di
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0xf4f3, %r12
nop
nop
nop
nop
nop
cmp %rax, %rax
movb $0x61, (%r12)
nop
add $50463, %r12
lea addresses_A_ht+0x98b7, %rsi
lea addresses_A_ht+0x181f7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $5196, %rax
mov $13, %rcx
rep movsw
inc %r15
lea addresses_normal_ht+0x144f7, %r15
inc %r12
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
cmp $775, %rdi
lea addresses_UC_ht+0x12ff7, %r15
nop
and $22274, %r9
movb $0x61, (%r15)
cmp $64088, %rdi
lea addresses_D_ht+0xf2f7, %rsi
lea addresses_UC_ht+0x15bf7, %rdi
nop
nop
nop
nop
nop
add $59698, %rdx
mov $30, %rcx
rep movsl
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x1b5af, %rsi
lea addresses_D_ht+0x125f7, %rdi
clflush (%rsi)
cmp $46487, %rax
mov $41, %rcx
rep movsb
nop
xor %rax, %rax
lea addresses_A_ht+0x1276f, %r12
nop
nop
nop
add $58320, %r15
movb $0x61, (%r12)
nop
nop
and %r15, %r15
lea addresses_D_ht+0x17597, %r15
nop
nop
nop
nop
nop
xor $49313, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x8def, %rsi
lea addresses_WT_ht+0x1bad7, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $33, %rcx
rep movsq
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rcx

// Faulty Load
lea addresses_RW+0xc1f7, %r14
clflush (%r14)
nop
nop
dec %rax
movaps (%r14), %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'48': 1811, 'ff': 1, '46': 6252, '00': 8674, '45': 5051, '44': 40}
00 46 46 46 00 00 00 00 46 48 00 46 00 00 46 00 00 46 48 46 46 00 00 45 45 00 45 00 00 46 48 00 00 00 45 00 00 00 00 46 45 00 46 48 46 46 46 48 46 46 00 00 46 48 46 46 48 46 00 00 46 00 46 00 00 46 48 00 46 00 00 00 00 45 48 00 00 00 00 46 48 00 00 00 00 00 00 00 45 46 48 00 45 48 00 00 46 46 48 00 46 46 46 46 46 46 00 48 45 00 00 46 46 00 00 46 48 46 00 00 48 46 46 48 46 46 46 00 00 00 46 00 46 45 00 00 46 48 00 46 00 00 45 00 00 45 45 00 45 46 00 45 46 00 45 46 46 48 46 46 00 00 46 48 46 46 00 00 46 48 46 46 00 46 46 46 45 46 45 00 46 00 00 00 45 00 00 00 45 45 00 46 00 48 00 00 00 00 46 46 46 48 46 46 46 00 46 46 00 48 00 44 48 00 45 48 00 45 48 00 45 00 48 46 00 46 46 48 45 45 45 00 45 45 00 45 45 00 45 45 00 00 00 00 00 00 00 45 45 00 45 45 00 00 00 45 00 00 00 00 45 45 00 45 46 46 00 46 00 46 00 00 45 45 00 46 48 45 48 00 46 48 45 46 48 45 45 45 00 46 48 46 45 46 45 00 00 45 45 00 00 45 48 00 45 48 00 46 46 00 46 46 00 48 00 46 46 00 46 48 00 46 46 00 45 00 46 48 46 45 48 45 46 46 00 45 45 00 46 46 00 46 00 46 46 00 46 46 00 46 46 48 46 46 48 45 45 00 00 45 45 00 45 45 00 45 45 00 45 45 00 45 46 46 00 45 48 00 46 46 46 00 00 46 46 46 00 45 46 00 48 45 45 00 45 46 46 45 00 45 46 00 00 00 00 45 00 00 46 45 00 45 00 00 46 45 48 45 45 00 46 48 46 46 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 48 45 46 00 46 48 00 00 48 45 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 46 00 00 46 46 46 48 45 48 46 46 00 46 00 00 46 48 46 00 45 46 46 00 00 00 46 48 46 46 00 00 46 46 46 46 46 46 00 48 00 00 00 00 00 00 00 00 00 00 00 45 45 00 46 45 46 48 45 00 46 46 46 48 45 45 46 46 46 00 00 46 48 45 48 45 45 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 48 46 46 46 00 00 00 00 00 00 00 00 46 00 00 00 45 00 00 46 48 00 46 46 00 46 00 00 45 45 00 00 00 46 45 00 00 00 00 00 45 00 00 00 00 45 46 46 00 00 00 00 46 45 00 46 48 45 46 46 45 46 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 45 45 00 00 00 00 45 45 46 00 00 46 46 48 46 46 48 00 46 48 00 46 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 45 00 45 45 00 45 45 00 45 45 00 00 00 00 00 00 00 00 00 45 45 00 45 45 00 00 00 45 45 00 46 45 00 00 45 48 00 45 00 46 46 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 46 46 48 00 00 00 46 46 48 00 00 00 00 45 45 45 48 45 46 00 00 46 46 46 00 46 46 00 46 46 45 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 46 48 45 46 00 00 45 45 00 45 45 00 45 45 00 46 48 00 46 48 45 46 45 00 45 46 00 45 00 00 00 46 46 00 46 00 00 00 00 00 45 48 00 45 00 00 00 00 00 00 00 46 00 00 46 48 00 00 00 00 00 00 46 48 46 46 46 00 46 46 00 46 45 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 45 45 00 00 00 46 48 45 46 45 00 00 00 46 48 45 45 00 45 46 48 46 45 00 00 46 48 45 45 00 00 00 00 00 00 45 00 00 45 45 00 45 45 00 00 00 45 45 00 00 00 45 45 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 00 46 48 46 45 45 00 45 45 00 46 48 46 46
*/
