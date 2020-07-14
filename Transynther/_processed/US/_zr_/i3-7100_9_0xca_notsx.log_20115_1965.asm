.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6b6a, %rbx
nop
nop
cmp %r15, %r15
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
lfence
lea addresses_WC_ht+0xf86a, %rsi
lea addresses_UC_ht+0x3d4a, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xf5ba, %rdi
nop
nop
nop
cmp $52193, %r15
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x476a, %rsi
lea addresses_normal_ht+0x1a5aa, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $98, %rcx
rep movsl
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0xb06a, %rsi
lea addresses_UC_ht+0xdb1a, %rdi
cmp $24783, %r12
mov $64, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x946a, %rsi
nop
nop
nop
dec %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub $20301, %rbp
lea addresses_A_ht+0x1356a, %rsi
lea addresses_normal_ht+0x326a, %rdi
clflush (%rdi)
nop
nop
nop
add %rbp, %rbp
mov $11, %rcx
rep movsq
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x646a, %rbp
clflush (%rbp)
xor %rsi, %rsi
movl $0x61626364, (%rbp)
cmp %rcx, %rcx
lea addresses_WC_ht+0x1486a, %r8
nop
nop
nop
nop
nop
xor %r12, %r12
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r15
add $42351, %r15
lea addresses_WT_ht+0x1bd2, %r15
nop
nop
inc %rcx
movups (%r15), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
cmp $35484, %rbx
lea addresses_D_ht+0x1986a, %rsi
lea addresses_normal_ht+0x29ea, %rdi
nop
cmp %r12, %r12
mov $92, %rcx
rep movsb
nop
sub $41444, %rbx
lea addresses_normal_ht+0x1ae6a, %rsi
lea addresses_UC_ht+0x1d7ea, %rdi
nop
nop
nop
nop
nop
sub $39541, %rbp
mov $27, %rcx
rep movsw
nop
nop
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0xb6a, %r12
nop
nop
nop
nop
nop
xor %r11, %r11
movb $0x51, (%r12)
nop
sub %rdx, %rdx

// Store
lea addresses_PSE+0x124e1, %rax
nop
cmp $43387, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rax)
nop
xor $16842, %r12

// Store
lea addresses_WC+0x1b902, %rbx
clflush (%rbx)
nop
sub $17396, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movntdq %xmm5, (%rbx)
sub %rax, %rax

// Store
mov $0x42e21f00000006ca, %r11
nop
nop
cmp $43706, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
cmp $5719, %rbx

// Store
lea addresses_D+0x1416a, %rdi
cmp $47041, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovntdq %ymm3, (%rdi)
cmp %r8, %r8

// Store
lea addresses_normal+0xba6a, %r8
nop
nop
nop
nop
and $11880, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r8)
nop
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0x386a, %r12
nop
nop
nop
xor $18623, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
and %r8, %r8

// Store
mov $0xc6a, %rax
nop
nop
nop
nop
sub $1540, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0xe58e, %rax
nop
nop
nop
nop
and $4191, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_US+0x706a, %rax
nop
nop
nop
and %rdx, %rdx
mov (%rax), %r8w
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'00': 20115}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
