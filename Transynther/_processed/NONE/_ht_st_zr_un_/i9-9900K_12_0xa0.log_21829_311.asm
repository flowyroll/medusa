.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1af63, %r15
nop
add %rdx, %rdx
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm0
vpextrq $1, %xmm0, %r10
nop
dec %rdx
lea addresses_A_ht+0x12754, %rsi
lea addresses_WT_ht+0xaa0b, %rdi
clflush (%rdi)
nop
nop
cmp $17380, %r13
mov $50, %rcx
rep movsl
nop
nop
nop
add $57474, %r15
lea addresses_normal_ht+0x927f, %rsi
nop
nop
sub %rdx, %rdx
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
cmp %r15, %r15
lea addresses_normal_ht+0xda93, %r15
clflush (%r15)
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
xor $19439, %rsi
lea addresses_WC_ht+0x57d3, %rsi
lea addresses_normal_ht+0x5853, %rdi
sub %r11, %r11
mov $79, %rcx
rep movsl
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x14910, %r10
clflush (%r10)
nop
nop
nop
xor %r11, %r11
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x10c53, %rsi
lea addresses_D_ht+0x1c4d3, %rdi
clflush (%rsi)
nop
sub %r11, %r11
mov $27, %rcx
rep movsq
nop
nop
add $26144, %rdx
lea addresses_D_ht+0x169d3, %rdi
nop
inc %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
mfence
lea addresses_normal_ht+0x3913, %rcx
nop
nop
sub $52658, %rsi
mov (%rcx), %r10d
nop
nop
nop
nop
nop
xor $3034, %rcx
lea addresses_normal_ht+0xdf87, %r13
and $545, %r15
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
xor $15358, %r13
lea addresses_UC_ht+0x9913, %rsi
lea addresses_UC_ht+0xf820, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $62, %rcx
rep movsw
sub %rcx, %rcx
lea addresses_A_ht+0x18d53, %rsi
lea addresses_WC_ht+0x8653, %rdi
nop
nop
nop
cmp $49142, %rdx
mov $53, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x11dcf, %r11
nop
nop
nop
nop
and $28972, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0xca53, %r11
nop
and $6599, %r13
movb $0x61, (%r11)
nop
nop
nop
sub $63170, %rdx
lea addresses_normal_ht+0x2253, %rcx
nop
nop
and %r10, %r10
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
dec %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x185d3, %rcx
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
nop
nop
nop
nop
xor $29857, %rbx

// Store
lea addresses_WC+0x496d, %rbp
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
dec %rdx

// Faulty Load
lea addresses_WT+0xca53, %r9
nop
nop
nop
nop
nop
xor $46677, %r8
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'63': 3, '34': 2, '47': 13, '78': 1, '44': 11680, '48': 1310, '08': 2, '00': 2569, '4c': 1, 'ff': 1, '45': 6246, '1e': 1}
45 00 45 44 45 44 44 00 44 45 00 44 44 45 48 44 00 44 45 48 44 45 44 45 00 44 00 44 44 45 44 45 44 45 00 44 44 44 44 45 44 44 45 00 44 00 44 45 00 44 45 48 44 00 44 45 44 45 00 44 45 44 44 45 48 44 48 44 45 44 44 45 48 44 45 44 44 48 44 45 44 44 45 00 44 45 44 44 44 44 45 48 44 00 44 44 00 44 45 45 44 45 44 44 45 44 45 44 44 00 44 45 45 44 45 44 44 44 45 00 44 45 48 44 48 44 45 44 45 44 44 45 00 44 45 44 44 45 44 45 44 44 45 48 44 00 44 44 44 44 44 45 44 44 45 44 45 44 45 48 44 45 44 44 45 44 45 48 44 45 45 44 45 44 44 45 44 45 44 44 00 44 44 45 48 44 45 00 44 00 44 45 45 44 44 00 44 00 44 45 44 45 44 00 44 45 44 44 44 44 44 44 45 00 44 45 44 44 44 44 44 45 44 44 45 48 44 00 44 44 48 44 45 44 44 45 00 00 44 45 48 44 00 44 45 48 44 45 48 44 45 44 44 45 44 45 44 45 44 44 45 00 00 45 44 44 45 00 44 00 44 44 00 44 44 45 44 44 45 45 44 44 45 44 44 45 44 44 45 44 44 45 45 44 44 45 44 44 45 00 44 44 45 48 44 00 44 44 45 48 44 45 44 44 44 44 45 44 44 45 44 44 45 44 44 45 44 44 45 44 44 45 44 44 45 48 44 45 48 44 00 44 44 45 00 44 45 48 44 44 44 00 44 45 44 44 45 44 45 44 45 44 45 48 44 45 00 44 45 44 44 45 44 44 48 44 45 00 44 45 44 44 00 44 44 45 44 45 44 44 45 45 44 45 44 44 45 00 44 45 44 45 00 44 45 44 44 45 00 44 45 44 44 00 44 45 44 44 45 00 44 45 44 44 45 44 00 45 44 44 45 00 44 48 44 45 48 44 00 44 45 00 44 44 44 44 44 45 44 44 45 44 44 45 48 44 45 44 45 44 44 45 00 44 45 44 44 45 44 44 45 44 44 45 44 44 45 44 45 44 44 45 44 45 44 44 45 44 45 44 45 44 44 00 44 45 00 44 00 44 44 44 44 45 44 44 45 00 44 00 44 44 44 44 44 45 48 44 45 44 44 44 00 44 45 44 44 45 44 44 45 48 44 45 44 44 45 44 45 44 44 45 44 45 48 44 45 44 44 45 44 44 45 00 44 44 45 44 44 45 44 44 48 44 45 45 44 44 45 44 44 45 44 44 45 00 44 00 44 45 44 44 45 44 00 44 44 00 44 00 44 44 00 44 00 00 44 00 44 00 44 44 44 00 44 45 44 44 00 44 44 45 44 44 44 44 00 44 45 44 44 00 44 00 44 45 00 44 44 44 44 45 44 44 45 44 45 44 45 44 45 00 44 45 48 00 45 00 44 45 48 44 44 44 44 45 48 44 45 44 44 45 44 44 45 48 44 45 45 44 44 45 00 44 44 44 48 44 45 44 48 44 45 48 44 45 00 44 45 44 44 44 44 45 44 44 45 44 44 45 44 45 48 44 45 44 44 45 44 44 45 44 44 45 44 44 45 00 08 45 48 44 44 45 44 44 45 44 45 44 45 44 44 45 00 44 45 44 45 44 45 48 44 45 44 44 45 44 44 44 44 44 45 44 44 45 48 44 00 44 44 45 44 44 45 48 44 45 44 44 45 44 44 45 44 44 45 48 44 45 00 44 44 45 44 44 45 44 44 45 44 44 45 45 44 44 45 44 44 00 44 45 44 44 45 00 44 45 44 45 44 44 45 44 44 00 44 45 44 45 44 44 45 45 44 45 44 44 45 44 45 44 44 45 45 44 45 44 44 45 44 00 44 45 45 44 45 48 44 45 00 44 45 44 44 00 44 45 48 44 45 48 44 00 44 45 00 44 45 44 44 45 00 44 48 44 45 00 44 45 48 44 45 44 44 45 44 00 45 45 44 00 45 44 44 45 44 00 45 44 44 45 45 44 44 45 48 44 45 44 44 00 44 45 45 44 44 00 44 00 44 00 44 44 45 45 44 00 44 44 00 44 00 44 00 44 00 44 45 00 44 45 44 44 00 44 45 44 44 45 00 44 44 45 48 44 45 44 44 45 48 44 45 48 44 45 44 44 48 44 45 44 44 45 48 44 45 44 44 44 44 00 44 45 44 44 00 00 45 44 44 00 44 00 44 44 00 44 00 44
*/
