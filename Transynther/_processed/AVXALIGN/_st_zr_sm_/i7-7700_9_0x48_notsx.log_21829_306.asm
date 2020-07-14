.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8e17, %r8
nop
add $65481, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
xor $18647, %rbp
lea addresses_D_ht+0x7d7, %r9
nop
nop
nop
nop
cmp $49233, %r10
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x2a17, %rsi
lea addresses_D_ht+0xd617, %rdi
nop
nop
nop
nop
add $9638, %r8
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
and $10846, %r10
lea addresses_UC_ht+0xa1b7, %r10
nop
nop
cmp %r9, %r9
mov (%r10), %r8w
nop
nop
nop
nop
cmp $31588, %r8
lea addresses_D_ht+0x1e173, %r9
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r9), %r8b
nop
nop
nop
cmp $10629, %rcx
lea addresses_UC_ht+0x1e017, %rsi
lea addresses_WT_ht+0x18c27, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $49, %rcx
rep movsl
inc %r10
lea addresses_normal_ht+0x8433, %rsi
lea addresses_WT_ht+0x1ee17, %rdi
nop
nop
sub $41357, %r9
mov $98, %rcx
rep movsw
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0xd471, %rdi
and %rbp, %rbp
mov (%rdi), %rbx
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xc95f, %rdi
nop
nop
nop
nop
nop
add $6207, %r9
movw $0x6162, (%rdi)
nop
nop
cmp $3959, %r9
lea addresses_UC_ht+0x1cd7, %rcx
nop
nop
nop
dec %rdi
movb (%rcx), %r8b
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1ee17, %rbx
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
add $48183, %rcx
lea addresses_UC_ht+0x8017, %r9
nop
and $63574, %rbx
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x13e57, %rdi
nop
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdi)
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1ee17, %rsi
nop
nop
add $3871, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
nop
and $14152, %rbp
lea addresses_D_ht+0x1b317, %r8
nop
nop
nop
nop
xor $45524, %r10
mov (%r8), %rbp
nop
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1de17, %r14
nop
nop
nop
inc %r12
movb $0x51, (%r14)
nop
nop
add $63652, %r12

// Store
lea addresses_UC+0xc317, %r15
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r15)
nop
dec %rdx

// REPMOV
mov $0x577, %rsi
lea addresses_UC+0x12963, %rdi
nop
inc %r11
mov $40, %rcx
rep movsl
cmp $58709, %r14

// Store
lea addresses_PSE+0x13bd3, %r12
nop
sub $54662, %rdi
movl $0x51525354, (%r12)
sub $47680, %r15

// Store
mov $0xa17, %r12
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movaps %xmm2, (%r12)
sub %rax, %rax

// Faulty Load
lea addresses_WC+0x1de17, %rax
nop
add $55942, %rbp
movntdqa (%rax), %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_P'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}}
{'51': 586, '00': 21243}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
