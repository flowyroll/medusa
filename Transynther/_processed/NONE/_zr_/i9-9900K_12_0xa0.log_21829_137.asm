.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19500, %r9
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x8fde, %rsi
lea addresses_WT_ht+0x1628c, %rdi
nop
sub %r13, %r13
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xede0, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and $34927, %r15
mov (%r13), %di
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x9860, %rdi
nop
nop
add %r11, %r11
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub $64087, %rdi
lea addresses_WC_ht+0x53c0, %rsi
lea addresses_WT_ht+0x4060, %rdi
nop
nop
nop
nop
cmp $50130, %r10
mov $25, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $5840, %r9
lea addresses_UC_ht+0x11e60, %rsi
lea addresses_UC_ht+0x1a0c8, %rdi
clflush (%rdi)
nop
nop
nop
sub %r10, %r10
mov $103, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1e220, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%r11), %r10b
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x187e0, %rsi
nop
nop
nop
nop
sub $52646, %rcx
movb (%rsi), %r9b
nop
nop
inc %r15
lea addresses_WC_ht+0x1a360, %r10
nop
nop
nop
nop
nop
dec %rsi
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x15c60, %rcx
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm2
vpextrq $0, %xmm2, %r15
nop
inc %rdi
lea addresses_WT_ht+0x2ec8, %rsi
lea addresses_WT_ht+0x124e0, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $37242, %r13
mov $61, %rcx
rep movsl
nop
add %r11, %r11
lea addresses_UC_ht+0xf120, %rdi
nop
nop
nop
nop
add %r11, %r11
movw $0x6162, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xb560, %r9
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r9), %r13d
nop
nop
and $37240, %rdi
lea addresses_WC_ht+0x18560, %r11
nop
nop
nop
add $9468, %r13
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
nop
nop
add $33050, %rdi
lea addresses_WT_ht+0xed60, %r10
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%r10)
nop
add $4487, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rcx
push %rdi

// Faulty Load
lea addresses_A+0x11a60, %r13
sub $16202, %r11
mov (%r13), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
