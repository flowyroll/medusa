.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1abe2, %r12
clflush (%r12)
nop
nop
nop
nop
and $35493, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
nop
sub $62037, %r10
lea addresses_UC_ht+0x31e2, %rsi
nop
nop
nop
xor %r11, %r11
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
cmp $52438, %r12
lea addresses_WC_ht+0x12142, %rsi
lea addresses_normal_ht+0x36e2, %rdi
nop
xor %r10, %r10
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $7339, %rcx
lea addresses_WC_ht+0x1e0a2, %r11
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%r11)
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0xff82, %rsi
lea addresses_D_ht+0x11de2, %rdi
clflush (%rsi)
nop
add $34162, %r9
mov $12, %rcx
rep movsq
nop
nop
nop
xor $20284, %r11
lea addresses_WT_ht+0x1aa3a, %rcx
nop
nop
nop
cmp %r10, %r10
movb (%rcx), %r12b
nop
nop
nop
nop
nop
xor $61038, %r14
lea addresses_A_ht+0x1c2c2, %rsi
lea addresses_normal_ht+0x1af20, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $80, %rcx
rep movsq
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x3d2a, %r12
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%r12)
nop
nop
sub $40949, %r10
lea addresses_WT_ht+0x53e2, %rsi
nop
nop
nop
cmp $29819, %r14
movb (%rsi), %r11b
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x57b0, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r11)
sub %rcx, %rcx
lea addresses_WC_ht+0xaa22, %r14
nop
nop
nop
nop
cmp %r9, %r9
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
cmp $30217, %rdi
lea addresses_WC_ht+0xffe2, %rsi
nop
nop
nop
inc %r9
movb (%rsi), %cl
nop
nop
nop
nop
xor $63723, %r11
lea addresses_A_ht+0x146b1, %rsi
lea addresses_WT_ht+0xf522, %rdi
nop
cmp $42, %r12
mov $8, %rcx
rep movsq
nop
dec %rdi
pop %rsi
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
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1f6ba, %r15
nop
nop
nop
nop
sub $5729, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
nop
add %r15, %r15

// Store
mov $0xe2, %rdi
clflush (%rdi)
and $33425, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
cmp $15145, %r15

// Faulty Load
lea addresses_A+0x41e2, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $15001, %r11
mov (%rdx), %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
