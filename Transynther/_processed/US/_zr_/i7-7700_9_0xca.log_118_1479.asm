.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12581, %rsi
lea addresses_normal_ht+0x1c181, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $83, %rcx
rep movsq
nop
nop
nop
xor $25855, %rbx
lea addresses_normal_ht+0x3381, %r10
clflush (%r10)
inc %rcx
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
nop
nop
sub $48276, %rbp
lea addresses_normal_ht+0x150b3, %rcx
nop
cmp $42356, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
xor $37172, %rbp
lea addresses_D_ht+0x16981, %rsi
lea addresses_UC_ht+0x9ab1, %rdi
nop
nop
and %rax, %rax
mov $53, %rcx
rep movsw
inc %rbp
lea addresses_normal_ht+0x1c5f4, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x1abe9, %rsi
lea addresses_UC_ht+0xcd8b, %rdi
cmp %rax, %rax
mov $125, %rcx
rep movsq
nop
nop
nop
nop
cmp $24323, %r8
lea addresses_normal_ht+0x11e41, %rbp
dec %r8
mov (%rbp), %rdi
nop
nop
nop
nop
add $12997, %rbx
lea addresses_WT_ht+0x17581, %rbx
nop
nop
nop
nop
sub $38281, %rax
movw $0x6162, (%rbx)
dec %rbx
lea addresses_A_ht+0x17181, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbx)
nop
nop
inc %rbp
lea addresses_A_ht+0x1521, %rsi
lea addresses_WC_ht+0x13591, %rdi
nop
nop
nop
sub $1243, %rax
mov $85, %rcx
rep movsl
dec %r8
lea addresses_D_ht+0x2ec1, %rbp
nop
nop
nop
add $40717, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbp)
xor $23921, %r8
lea addresses_D_ht+0x12679, %r10
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x781, %rsi
lea addresses_WT+0xd397, %rdi
nop
nop
nop
nop
nop
and $42570, %rax
mov $88, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_US+0x5981, %rax
nop
nop
nop
nop
nop
cmp %r14, %r14
movups (%rax), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'00': 118}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
