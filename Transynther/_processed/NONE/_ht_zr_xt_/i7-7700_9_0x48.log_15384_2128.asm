.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x67f4, %rsi
lea addresses_WT_ht+0x188f4, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $57, %rcx
rep movsl
nop
nop
inc %r10
lea addresses_WT_ht+0x1af94, %rsi
lea addresses_UC_ht+0x5b74, %rdi
nop
nop
nop
add %r11, %r11
mov $121, %rcx
rep movsl
and %rsi, %rsi
lea addresses_normal_ht+0xd74, %rsi
lea addresses_normal_ht+0xc8f4, %rdi
nop
nop
nop
cmp %rax, %rax
mov $53, %rcx
rep movsb
inc %r15
lea addresses_UC_ht+0x11b82, %rcx
dec %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
add $11239, %r15
lea addresses_WC_ht+0xa6fc, %rsi
lea addresses_normal_ht+0x4a29, %rdi
xor %rdx, %rdx
mov $6, %rcx
rep movsl
sub %rax, %rax
lea addresses_D_ht+0x1c7f4, %r11
nop
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%r11)
nop
nop
nop
cmp $31099, %rdx
lea addresses_A_ht+0x12cf4, %rsi
lea addresses_normal_ht+0x5dbc, %rdi
nop
cmp $39800, %r11
mov $102, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $19256, %r15
lea addresses_D_ht+0x3be4, %rcx
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%rcx)
cmp $37771, %rax
lea addresses_A_ht+0x16234, %rsi
lea addresses_WT_ht+0x1ebeb, %rdi
nop
nop
nop
nop
cmp $19896, %r10
mov $112, %rcx
rep movsb
dec %rax
lea addresses_D_ht+0x28f4, %rsi
lea addresses_WT_ht+0x1b2f4, %rdi
nop
nop
nop
and $48671, %r11
mov $90, %rcx
rep movsq
nop
nop
nop
nop
xor $45675, %rdi
lea addresses_normal_ht+0x198f4, %rcx
nop
dec %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
and $37322, %rdi
lea addresses_UC_ht+0x1e5fa, %rsi
lea addresses_WT_ht+0xf178, %rdi
nop
add %r10, %r10
mov $77, %rcx
rep movsl
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1e0f4, %rax
dec %rcx
mov (%rax), %r10
nop
nop
xor $36764, %rcx
lea addresses_WC_ht+0x14eb4, %rcx
nop
nop
nop
inc %r15
movb (%rcx), %r10b
nop
nop
cmp $55624, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x1a384, %r11
nop
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
mov $0x4c51cc0000000634, %r14
nop
nop
nop
sub %r12, %r12
movb $0x51, (%r14)
xor %rsi, %rsi

// Load
lea addresses_WT+0x1c8f4, %rbp
nop
nop
nop
nop
cmp $37688, %rsi
mov (%rbp), %rbx
nop
nop
nop
nop
nop
xor $21328, %rbx

// Load
lea addresses_D+0x1aaa4, %rbx
nop
nop
sub $102, %r11
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
xor %r14, %r14

// Store
mov $0x774, %r11
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
add $41864, %rbx

// Faulty Load
lea addresses_WT+0x1f8f4, %rsi
nop
nop
nop
nop
nop
add $27262, %rdx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': True, 'NT': False}}
{'49': 271, '47': 12, '39': 1510, '45': 185, '00': 13406}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 39 39 39 39 39 39 39 00 39 39 39 00 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39 39 00 39 00 39 45 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39 39 39 39 00 00 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 00 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39 39 39 45 39 39 39 39 00 39 39 39 39 39 39 39 39 39 39 39 00 00 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39 39 49 49 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 00 00 39 39 39 39 39 00 00 39 39 39 39 39 39 39 39 39 39 39 45 39 39 39 39 00 45 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 39 39 39 39 39 39 39
*/
