.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x2514, %r10
nop
nop
nop
nop
and $16804, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x1d474, %rsi
lea addresses_UC_ht+0xc4da, %rdi
nop
nop
nop
nop
nop
add $53627, %r9
mov $116, %rcx
rep movsw
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0xc3b4, %rsi
sub $10331, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %rsi
movntdq %xmm6, (%rsi)
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x158b4, %rdx
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rdx)
sub %rdx, %rdx
lea addresses_A_ht+0xc4b4, %r9
nop
nop
nop
dec %rsi
mov (%r9), %edx
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x7ab4, %rdx
sub %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0xa7b4, %rsi
lea addresses_normal_ht+0x4ab4, %rdi
nop
nop
xor %r9, %r9
mov $40, %rcx
rep movsl
nop
nop
nop
nop
and $46617, %rdi
lea addresses_WC_ht+0x16714, %r10
nop
inc %r9
movb (%r10), %cl
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xeab4, %rsi
lea addresses_WC_ht+0x172b4, %rdi
add %rdx, %rdx
mov $93, %rcx
rep movsw
nop
xor $63662, %rdx
lea addresses_A_ht+0x170b8, %rsi
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rsi
movaps %xmm1, (%rsi)
add %rdi, %rdi
lea addresses_WC_ht+0x38e6, %rsi
nop
nop
nop
nop
nop
sub $62876, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rsi)
sub %rdx, %rdx
lea addresses_D_ht+0x1efb4, %r9
dec %rdi
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r10
mfence
lea addresses_normal_ht+0x15a34, %r10
nop
add $2339, %rbx
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_RW+0x132b4, %r14
add %r11, %r11
movb $0x51, (%r14)
and %r15, %r15

// Store
lea addresses_UC+0x1173a, %rbx
nop
nop
nop
nop
nop
xor $65516, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
cmp $20125, %r8

// Store
lea addresses_WT+0x14184, %r14
nop
nop
nop
nop
nop
sub $6195, %rsi
movw $0x5152, (%r14)
cmp %r11, %r11

// Load
lea addresses_PSE+0xf8b4, %rsi
cmp %r15, %r15
mov (%rsi), %ebx
xor %rcx, %rcx

// Store
lea addresses_US+0x10f8, %rbx
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rbx)
nop
nop
nop
nop
add $30884, %rsi

// Faulty Load
lea addresses_RW+0x132b4, %r15
clflush (%r15)
dec %r11
movb (%r15), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 77}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
