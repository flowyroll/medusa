.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x8816, %rsi
lea addresses_WC_ht+0x95ce, %rdi
nop
nop
nop
and $42345, %r13
mov $80, %rcx
rep movsq
nop
nop
add $11595, %rax
lea addresses_normal_ht+0xabe6, %r11
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0xe0e6, %rsi
lea addresses_D_ht+0xd5c6, %rdi
nop
nop
sub $12034, %r11
mov $69, %rcx
rep movsq
nop
nop
nop
nop
cmp $38359, %rdi
lea addresses_normal_ht+0xe626, %rax
nop
and %r11, %r11
mov (%rax), %di
nop
nop
nop
xor $41865, %r13
lea addresses_D_ht+0xf2d6, %r13
nop
nop
sub $7345, %rdx
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub $27371, %rcx
lea addresses_A_ht+0x10782, %rsi
lea addresses_UC_ht+0x13cea, %rdi
nop
nop
nop
nop
nop
xor $53455, %r14
mov $117, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_UC_ht+0x575a, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $31871, %rdx
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
inc %rdi
lea addresses_normal_ht+0x13546, %r14
add %rdx, %rdx
mov (%r14), %si
nop
nop
nop
nop
nop
cmp $5147, %r11
lea addresses_WC_ht+0x18fe6, %rsi
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0xa0c6, %rdx
nop
nop
sub $34762, %r11
movl $0x61626364, (%rdx)
xor %rsi, %rsi
lea addresses_WT_ht+0x18f0e, %rsi
lea addresses_WT_ht+0x187e6, %rdi
clflush (%rsi)
nop
inc %r11
mov $126, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1a22e, %rdi
nop
xor %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and $42540, %rdi
lea addresses_normal_ht+0x70e6, %rdx
nop
nop
nop
nop
nop
and $20136, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
add $45780, %rdi
lea addresses_normal_ht+0x1bd96, %rax
nop
nop
nop
nop
dec %r14
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
and $40300, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx

// Store
lea addresses_D+0xdec4, %r12
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movntdq %xmm0, (%r12)
nop
nop
nop
nop
nop
sub $48365, %r14

// Store
lea addresses_A+0xc7ce, %r13
nop
nop
nop
nop
inc %rax
movw $0x5152, (%r13)
nop
and $64471, %rcx

// Faulty Load
lea addresses_WT+0x5be6, %r8
nop
nop
inc %r14
movups (%r8), %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'39': 161}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
