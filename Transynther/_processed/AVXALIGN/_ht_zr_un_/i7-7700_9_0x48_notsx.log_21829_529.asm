.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19aa5, %rsi
lea addresses_D_ht+0x1e6bf, %rdi
add %rdx, %rdx
mov $40, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x1579f, %rsi
lea addresses_WT_ht+0x9557, %rdi
clflush (%rsi)
nop
nop
inc %rbp
mov $45, %rcx
rep movsw
nop
nop
nop
nop
add $7337, %rsi
lea addresses_D_ht+0x1e11f, %rcx
nop
nop
nop
xor $35388, %r14
mov (%rcx), %r15
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1491f, %rdi
sub %rdx, %rdx
movl $0x61626364, (%rdi)
add $63124, %rcx
lea addresses_WC_ht+0xb89f, %rsi
lea addresses_D_ht+0x4ddf, %rdi
nop
nop
dec %r15
mov $76, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xcb1f, %rsi
lea addresses_WC_ht+0xf81f, %rdi
nop
nop
nop
nop
nop
add $19919, %r10
mov $92, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_normal_ht+0x3a1f, %r15
clflush (%r15)
nop
nop
nop
sub $43830, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
xor $10812, %rdi
lea addresses_WC_ht+0x8a1f, %rsi
lea addresses_WT_ht+0xa667, %rdi
clflush (%rsi)
nop
and $50268, %r15
mov $77, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x14771, %rsi
lea addresses_WC_ht+0x1383f, %rdi
nop
nop
nop
xor $32055, %r10
mov $111, %rcx
rep movsw
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x1a81f, %r14
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r14)
xor %rdi, %rdi
lea addresses_D_ht+0x17e87, %rsi
lea addresses_UC_ht+0x6b1f, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $14, %rcx
rep movsb
nop
nop
nop
cmp $50324, %rsi
lea addresses_UC_ht+0x1201f, %r15
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r15), %edx
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0xc1f, %rsi
lea addresses_A_ht+0x1b19f, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $3, %rcx
rep movsw
nop
nop
cmp $31213, %rbp
lea addresses_UC_ht+0x11daf, %rsi
lea addresses_D_ht+0xad1f, %rdi
clflush (%rdi)
nop
nop
xor $49062, %r10
mov $43, %rcx
rep movsb
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xb973, %r13
nop
xor %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_A+0x130b7, %rdx
nop
nop
nop
nop
nop
and $11198, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x51f, %rbp
add $17605, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovaps %ymm2, (%rbp)
add $37769, %rbp

// Store
lea addresses_PSE+0x1861f, %r15
nop
nop
nop
xor %rsi, %rsi
movb $0x51, (%r15)
nop
nop
nop
add $56690, %rbp

// Store
lea addresses_WC+0xe81f, %rcx
nop
nop
nop
nop
nop
add $12811, %rsi
movl $0x51525354, (%rcx)
dec %rdi

// Faulty Load
lea addresses_WC+0xe81f, %r13
nop
nop
nop
nop
nop
xor $17256, %rsi
vmovntdqa (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'45': 2484, '44': 3, '46': 7043, '48': 49, '08': 1, '00': 12249}
00 46 00 46 46 00 46 00 00 46 00 00 00 45 00 46 00 00 46 46 46 00 46 00 00 00 00 46 00 00 00 45 00 00 00 46 46 00 00 00 00 46 46 46 00 00 46 46 46 00 46 45 46 00 00 46 46 00 45 00 00 46 00 00 46 00 00 46 46 46 46 45 00 00 00 46 46 46 00 00 00 46 46 46 45 00 46 00 46 46 45 46 45 46 00 46 46 00 00 00 45 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 00 00 45 46 46 46 46 46 00 46 00 00 45 00 00 46 00 46 46 46 00 46 45 00 46 00 46 00 46 46 00 00 46 46 00 46 45 00 46 46 00 45 00 46 00 46 46 00 46 00 45 00 00 00 46 00 46 00 00 46 00 46 46 00 45 00 00 46 00 46 00 46 00 46 00 00 00 46 00 46 46 00 46 00 46 46 46 00 00 46 45 00 46 00 00 46 00 46 00 46 45 45 00 46 00 00 00 00 00 00 46 00 45 00 45 00 46 46 45 00 46 00 00 00 00 46 46 46 00 46 00 00 46 46 00 45 00 00 00 00 45 46 46 00 00 00 00 00 46 00 00 46 46 00 00 46 00 46 00 00 00 46 00 46 00 00 00 00 46 00 46 00 00 46 45 46 00 00 46 00 46 00 00 00 00 46 00 00 46 00 00 00 00 45 00 00 00 46 46 00 46 00 46 46 46 46 46 00 00 00 00 00 46 00 00 45 45 46 46 00 00 00 00 46 45 00 00 46 00 00 00 00 46 00 00 46 46 46 00 46 46 46 00 45 46 00 00 00 00 00 00 00 46 00 45 46 00 00 00 45 46 00 45 00 00 46 00 46 00 46 00 45 00 46 00 46 46 46 46 46 00 00 46 46 00 46 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 46 46 46 00 46 00 00 45 00 00 45 46 46 00 00 00 00 45 00 00 00 00 00 00 46 00 46 00 00 46 46 46 00 45 46 00 00 45 00 00 45 00 00 00 00 46 45 00 00 46 00 45 00 46 46 00 46 00 46 00 00 46 00 00 00 46 46 00 00 00 46 45 00 00 46 00 00 00 00 00 00 45 00 46 46 00 00 00 00 00 00 46 46 00 00 00 46 45 45 46 00 46 46 00 46 00 46 00 00 46 46 46 46 00 00 45 00 00 00 00 00 00 46 00 46 45 46 00 46 46 00 00 46 00 46 00 46 45 45 00 00 00 00 46 00 46 00 00 00 00 00 00 46 46 00 46 00 00 00 46 00 00 00 46 46 00 45 00 46 46 00 46 46 45 46 00 00 00 46 00 46 00 00 46 00 00 00 45 00 00 45 00 46 00 00 00 00 45 00 00 00 46 46 46 00 00 46 46 00 45 00 46 00 46 46 46 00 00 46 46 45 45 00 46 00 46 46 46 46 00 00 00 00 46 46 00 46 45 00 00 46 00 00 46 45 46 00 46 00 00 00 46 00 46 00 00 00 46 00 46 00 45 46 00 00 45 00 00 45 00 46 45 00 00 45 00 00 46 00 46 00 00 00 00 46 00 46 00 00 45 45 46 46 00 45 46 46 45 00 00 46 00 46 00 00 45 00 00 45 00 00 46 00 00 00 45 46 00 00 45 00 00 00 46 00 45 00 45 00 46 46 00 00 00 00 00 45 00 00 45 00 00 46 45 00 00 00 45 45 45 45 00 46 46 00 00 00 46 00 45 00 00 46 46 46 46 00 00 00 00 46 00 00 46 46 00 46 45 00 45 45 46 00 00 00 00 46 00 00 46 00 00 00 46 00 46 00 45 45 46 46 00 00 00 00 00 45 00 45 46 46 00 00 00 46 46 00 00 00 00 00 00 46 00 00 45 45 00 00 46 00 46 00 00 45 00 46 00 00 46 46 00 00 45 00 46 00 00 00 00 46 46 46 46 46 00 00 00 00 46 46 46 46 00 00 45 00 46 00 00 00 46 00 00 46 00 00 46 46 00 46 00 46 00 46 00 00 00 46 00 46 00 00 45 00 45 00 46 00 00 00 00 46 00 00 00 46 00 46 46 00 45 00 45 45 46 46 00 46 00 00 00 46 00 00 00 00 46 00 00 45 46 00 45 46 00 00 00 00 46 45 46 00 46 45 46 46 46 46 00 00 46 45 00 00 46 45 45 46 46 46 00 00 46 00 46 00 46 46 00 46 45 00 00 00
*/
