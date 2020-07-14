.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdx
lea addresses_normal_ht+0xcdf8, %rdx
and $24036, %rcx
mov (%rdx), %r12
xor $57021, %r11
lea addresses_normal_ht+0x19df8, %r10
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r10)
xor %r11, %r11
lea addresses_A_ht+0x18aa8, %r11
nop
nop
nop
nop
xor $29766, %rbp
movw $0x6162, (%r11)
and %rcx, %rcx
lea addresses_normal_ht+0x53d8, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub $17270, %r11
movw $0x6162, (%rbp)
cmp %rbp, %rbp
lea addresses_D_ht+0x35f0, %r12
add $52841, %r10
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x8bf8, %r11
clflush (%r11)
cmp %r15, %r15
movb (%r11), %r12b
nop
sub $38431, %r11
lea addresses_D_ht+0x1e0ec, %rbp
nop
nop
nop
nop
cmp $22948, %r11
movl $0x61626364, (%rbp)
nop
nop
nop
cmp $55612, %r11
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1aa38, %rcx
nop
nop
nop
nop
nop
add $44655, %r8
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
sub %rcx, %rcx

// Store
mov $0x4bec83000000085e, %r14
clflush (%r14)
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%r14)
nop
nop
sub $41304, %rcx

// Load
lea addresses_A+0xc5f8, %rsi
cmp %rdx, %rdx
mov (%rsi), %rdi
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x1c098, %r8
nop
inc %rsi
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
and $58719, %rax

// Store
lea addresses_UC+0xa5f8, %rdi
nop
nop
nop
cmp $9240, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
xor $38966, %rdx

// Faulty Load
lea addresses_A+0xc5f8, %rdi
and %r14, %r14
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 214}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
