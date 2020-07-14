.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x141f0, %rsi
lea addresses_WC_ht+0x1266c, %rdi
nop
nop
xor $27636, %r14
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x9798, %rbp
nop
cmp $41365, %r10
movb $0x61, (%rbp)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x161de, %rsi
lea addresses_A_ht+0x98f0, %rdi
and %rbx, %rbx
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x171e4, %rdi
nop
nop
xor $12864, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
nop
and $39009, %rdi
lea addresses_A_ht+0x3cf0, %rsi
nop
nop
nop
and %rbx, %rbx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
and $20012, %rsi
lea addresses_A_ht+0x11ac8, %r14
nop
nop
nop
and $23890, %rdi
movb $0x61, (%r14)
nop
sub $27248, %rcx
lea addresses_UC_ht+0x81f0, %rcx
nop
add $57679, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm4, (%rcx)
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x38cc, %rdi
nop
nop
nop
nop
add $62190, %r10
mov (%rdi), %esi
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x1700, %r14
nop
nop
nop
nop
nop
dec %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x10e80, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $39154, %r14
mov (%rsi), %di
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x2af6, %rsi
cmp $14473, %r14
mov (%rsi), %bp
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x175f0, %rbx
nop
nop
inc %r10
mov (%rbx), %rdi
nop
and $61972, %rcx
lea addresses_WT_ht+0x1cbf0, %rsi
lea addresses_normal_ht+0x3f40, %rdi
nop
inc %r9
mov $2, %rcx
rep movsb
nop
nop
nop
nop
nop
add $10321, %rdi
lea addresses_WC_ht+0x16c50, %rcx
nop
nop
cmp %rsi, %rsi
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
inc %rbp
lea addresses_WT_ht+0x73f0, %rbx
nop
nop
nop
and %r9, %r9
movw $0x6162, (%rbx)
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax

// Faulty Load
lea addresses_US+0x9df0, %rax
nop
nop
nop
add $7900, %r11
mov (%rax), %r14d
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'00': 3}
00 00 00
*/
