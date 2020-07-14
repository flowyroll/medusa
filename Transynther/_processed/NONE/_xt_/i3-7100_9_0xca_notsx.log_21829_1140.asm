.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c2c, %rbx
nop
nop
add %r11, %r11
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x14e2c, %rsi
lea addresses_normal_ht+0x532c, %rdi
xor $39756, %rdx
mov $81, %rcx
rep movsl
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x1a4bc, %rsi
nop
nop
and %r14, %r14
mov (%rsi), %edi
nop
nop
nop
nop
nop
cmp $64187, %r14
lea addresses_WT_ht+0x14a2c, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rsi), %edx
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xda2c, %rcx
nop
nop
xor $23041, %rdx
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
dec %r14
lea addresses_WT_ht+0x17e2c, %rsi
lea addresses_normal_ht+0x1422c, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $125, %rcx
rep movsq
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x5d8a, %rsi
lea addresses_WT_ht+0x101ec, %rdi
nop
nop
nop
and %rbx, %rbx
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdx
lea addresses_D_ht+0xaec, %rdx
clflush (%rdx)
nop
nop
nop
and %rcx, %rcx
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r14
nop
xor %rdx, %rdx
lea addresses_A_ht+0x1acec, %r11
nop
and $64189, %rdx
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
add $62977, %rsi
lea addresses_D_ht+0x1892c, %rsi
lea addresses_A_ht+0x1ee2c, %rdi
sub $28359, %r15
mov $65, %rcx
rep movsw
nop
nop
sub $11038, %rsi
lea addresses_UC_ht+0xb14, %rdx
nop
nop
nop
nop
inc %rcx
mov (%rdx), %si
nop
nop
add $46770, %r15
lea addresses_WC_ht+0x160ec, %rbx
nop
nop
nop
add $58055, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
and $29487, %rbx
lea addresses_D_ht+0x3990, %rcx
sub $1425, %r15
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x17c54, %r11
clflush (%r11)
cmp %r15, %r15
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x18c2c, %r14
clflush (%r14)
nop
nop
nop
nop
add $45765, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
sub $58220, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_A+0x4244, %r12
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
inc %r12

// Faulty Load
lea addresses_A+0x1522c, %r15
nop
nop
nop
nop
nop
xor $463, %r12
movb (%r15), %bl
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
