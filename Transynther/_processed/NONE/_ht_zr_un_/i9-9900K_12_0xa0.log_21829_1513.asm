.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc55c, %rsi
lea addresses_A_ht+0x30fc, %rdi
nop
nop
nop
xor %r8, %r8
mov $88, %rcx
rep movsq
cmp %rdi, %rdi
lea addresses_A_ht+0x1db22, %r12
nop
nop
nop
and $38453, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%r12)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x10fdc, %rsi
lea addresses_UC_ht+0x64dc, %rdi
clflush (%rsi)
and %r8, %r8
mov $23, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $661, %r10
lea addresses_WT_ht+0xb89c, %rsi
lea addresses_WC_ht+0x12c1c, %rdi
clflush (%rdi)
nop
nop
cmp %r12, %r12
mov $89, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $38415, %rdi
lea addresses_A_ht+0x13dc, %rsi
lea addresses_A_ht+0x36bc, %rdi
nop
nop
cmp %r12, %r12
mov $79, %rcx
rep movsw
nop
nop
xor $1245, %r10
lea addresses_D_ht+0xc5dc, %rsi
lea addresses_WT_ht+0x15bfc, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $3901, %rax
mov $62, %rcx
rep movsw
nop
sub $6707, %r12
lea addresses_D_ht+0xef3c, %rcx
xor $4283, %rsi
mov (%rcx), %r10d
and $42838, %r10
lea addresses_A_ht+0x1b95c, %rax
nop
nop
dec %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xda5c, %rsi
lea addresses_D_ht+0x14ddc, %rdi
nop
and %rbp, %rbp
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $20102, %r8
lea addresses_UC_ht+0x3634, %rsi
lea addresses_A_ht+0x135ec, %rdi
nop
nop
nop
nop
sub $61024, %r10
mov $59, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x2348, %r10
clflush (%r10)
nop
cmp $131, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x198a2, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r8
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r12
nop
and %rsi, %rsi
lea addresses_WT_ht+0x75dc, %r10
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%r10)
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1867c, %r10
nop
inc %r12
movb $0x61, (%r10)
and $59751, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rdx

// Faulty Load
lea addresses_UC+0x1a5dc, %r13
nop
nop
nop
nop
cmp $42242, %r11
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}}
{'44': 2, '48': 12239, '49': 109, '08': 2, '00': 1825, '46': 7186, '45': 461, '72': 5}
48 46 48 48 00 48 45 48 48 46 46 48 48 48 48 46 46 48 00 48 46 48 00 48 48 45 46 48 00 48 48 46 48 48 48 46 45 48 00 48 48 46 46 48 48 48 46 48 00 48 48 46 46 48 48 46 48 48 46 48 46 46 48 48 48 48 46 48 00 48 48 46 46 48 48 48 46 48 00 48 46 48 48 46 48 48 48 48 46 46 48 48 48 48 46 46 48 48 46 46 46 48 48 46 00 00 48 46 46 00 48 48 46 48 48 46 46 46 48 48 48 46 48 00 48 48 46 48 48 48 46 48 48 48 46 48 48 46 48 46 46 48 48 46 48 00 48 46 48 48 48 46 46 46 48 46 46 48 48 46 46 48 48 46 46 48 48 48 48 48 46 48 48 46 46 48 48 48 46 46 48 48 48 48 46 48 48 48 48 46 48 48 48 46 48 46 48 48 48 46 46 48 48 46 46 48 48 48 48 48 46 48 48 46 46 48 48 48 48 46 46 48 00 46 46 48 48 48 48 46 46 48 00 48 48 46 46 48 48 48 45 48 00 48 46 48 48 48 46 45 48 48 46 46 48 48 48 48 46 46 48 48 46 48 46 46 48 48 46 48 00 48 46 48 48 48 48 46 48 48 48 48 46 46 48 48 48 46 46 48 00 48 48 46 48 48 48 46 46 46 48 48 46 46 48 48 48 46 48 00 48 48 46 48 48 48 46 46 48 48 48 46 46 48 49 45 48 00 48 48 46 46 48 48 48 46 48 48 46 46 48 48 48 46 46 48 00 48 48 46 46 48 00 48 46 48 00 46 46 48 48 48 45 46 46 48 00 48 46 46 48 48 48 46 00 00 48 48 46 46 48 48 48 46 48 00 48 48 46 46 48 48 48 46 48 48 46 48 46 46 48 48 48 46 48 00 48 48 46 48 46 46 48 48 48 46 48 48 46 46 46 48 48 48 46 48 00 72 48 46 48 48 48 48 46 46 48 48 46 46 48 48 48 48 46 46 48 00 48 48 46 46 48 48 48 46 48 48 46 46 48 48 48 46 46 48 48 46 46 48 48 48 48 46 46 48 48 45 46 48 48 48 48 46 46 48 00 48 46 48 48 48 48 46 48 48 48 48 46 46 48 48 46 48 48 46 46 48 48 46 46 48 00 48 46 48 48 48 48 46 46 48 48 46 46 48 48 48 48 46 46 48 48 48 48 46 46 48 48 48 46 48 00 48 48 45 46 00 48 48 46 48 48 46 46 48 48 48 46 46 46 48 48 46 00 48 00 48 46 48 00 48 48 46 48 48 48 48 46 46 46 48 48 48 46 48 00 48 48 46 46 48 48 46 46 48 00 48 48 46 46 48 48 49 46 48 00 48 46 46 48 48 48 46 48 48 46 46 00 48 48 46 45 48 00 48 48 46 46 48 48 46 48 00 48 48 46 48 48 46 48 00 48 46 00 48 48 46 46 46 48 00 48 48 46 46 48 48 46 48 00 48 48 46 46 48 48 48 45 48 48 45 48 46 00 48 48 46 46 48 00 48 48 46 46 48 48 48 46 48 00 48 48 46 46 48 48 48 46 48 00 48 46 48 48 48 46 45 48 48 46 46 48 48 48 48 46 00 00 48 45 48 46 48 48 48 46 48 48 46 46 46 48 48 48 46 48 00 48 46 48 48 48 48 46 00 00 48 48 46 48 48 48 46 46 48 48 46 46 46 48 48 48 46 48 00 48 48 46 46 48 48 48 46 48 48 46 46 48 48 48 46 46 46 48 00 48 48 46 46 48 48 48 48 48 46 48 00 48 48 46 46 48 48 45 46 48 48 48 48 46 46 48 48 48 46 48 00 48 48 46 48 00 48 48 46 46 48 00 48 48 46 46 48 48 46 48 48 46 46 48 48 48 46 45 48 00 48 46 48 48 48 45 45 48 00 48 46 46 48 48 48 46 48 00 48 46 46 48 48 48 48 45 46 48 00 48 48 46 48 48 48 46 46 46 48 48 46 48 45 48 48 46 46 48 00 48 46 46 48 48 46 46 46 48 48 46 46 48 00 48 46 46 48 48 48 46 48 00 48 00 46 46 48 48 48 46 48 00 48 48 46 48 48 48 48 46 46 48 00 46 46 48 48 46 46 48 48 46 48 46 46 48 48 48 45 48 00 48 46 48 00 48 48 46 46 48 00 48 48 46 48 48 48 48 46 48 00 48 46 48 48 48 46 46 48 00 48 46 46 48 48 48 46 48 00 48 48 46 46
*/
