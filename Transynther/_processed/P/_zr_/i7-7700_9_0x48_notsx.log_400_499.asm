.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1951c, %r12
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r12)
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x72f4, %r14
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
sub %r9, %r9
lea addresses_normal_ht+0x120f4, %rsi
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
dec %r9
lea addresses_UC_ht+0x10334, %r9
nop
nop
and %r11, %r11
mov (%r9), %r10
and $64916, %r11
lea addresses_normal_ht+0xa614, %r10
nop
nop
nop
nop
nop
and %r14, %r14
movb (%r10), %dl
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x3734, %r11
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r11)
nop
nop
cmp $55354, %rdx
lea addresses_WC_ht+0x1b8b4, %rsi
lea addresses_normal_ht+0xde34, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $126, %rcx
rep movsq
nop
add $59774, %rdx
lea addresses_A_ht+0x11c34, %rsi
lea addresses_WC_ht+0x16e34, %rdi
nop
nop
nop
sub %r12, %r12
mov $66, %rcx
rep movsq
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x8a34, %r10
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%r10), %rsi
nop
nop
nop
cmp $19204, %rsi
lea addresses_D_ht+0x4c74, %rsi
lea addresses_D_ht+0x14704, %rdi
nop
cmp %r10, %r10
mov $92, %rcx
rep movsw
nop
nop
add $21558, %rsi
lea addresses_WT_ht+0x97b0, %rsi
nop
nop
nop
nop
nop
and $48013, %rdx
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xcc74, %rsi
lea addresses_A_ht+0xe834, %rdi
nop
nop
nop
nop
nop
and $10402, %r10
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0xfac6, %r9
nop
inc %r10
movups (%r9), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x12834, %r14
nop
cmp %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
sub $4706, %rsi
lea addresses_A_ht+0x198e5, %r11
nop
dec %r14
movb $0x61, (%r11)
add $52030, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rdx

// Load
lea addresses_normal+0x124b4, %r11
nop
nop
nop
mfence
mov (%r11), %dx
nop
nop
and %r13, %r13

// Faulty Load
mov $0xa34, %rdx
and $58555, %r10
mov (%rdx), %r8w
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'00': 400}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
