.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x398d, %rbp
clflush (%rbp)
xor $2208, %r8
movl $0x61626364, (%rbp)
and $48073, %rax
lea addresses_D_ht+0xdc2d, %r9
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r9)
add $21299, %rbp
lea addresses_D_ht+0x15f35, %r9
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x12363, %r9
nop
nop
cmp $10697, %rax
mov (%r9), %r12w
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x101f5, %rsi
lea addresses_WC_ht+0xd175, %rdi
nop
nop
add $3044, %rbp
mov $109, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x17e35, %rsi
lea addresses_UC_ht+0xd235, %rdi
clflush (%rdi)
nop
nop
nop
xor $46189, %r8
mov $102, %rcx
rep movsw
nop
add $35646, %rsi
lea addresses_WT_ht+0xdd35, %rdi
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0xa535, %rsi
lea addresses_D_ht+0x19035, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $73, %rcx
rep movsq
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x1335, %r8
nop
nop
nop
xor %rcx, %rcx
movb (%r8), %r9b
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x127b5, %rsi
nop
nop
inc %rax
movb (%rsi), %cl
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1ee95, %rsi
lea addresses_D_ht+0x11695, %rdi
nop
nop
sub $37814, %rax
mov $21, %rcx
rep movsb
nop
nop
nop
nop
xor $38168, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x19af5, %rcx
nop
nop
sub %r15, %r15
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_UC+0x18e35, %rdx
nop
nop
nop
nop
sub %r13, %r13
movaps (%rdx), %xmm5
vpextrq $0, %xmm5, %r15
nop
add $9025, %rcx

// Load
lea addresses_WT+0xebe5, %r13
nop
nop
sub $48139, %r15
mov (%r13), %r11d
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
mov $0x6f5, %r15
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_RW+0x13f35, %r9
inc %rdx
movl $0x51525354, (%r9)
nop
nop
nop
cmp $64511, %r15

// Load
lea addresses_WC+0x1bf35, %r13
nop
nop
nop
nop
nop
xor %r11, %r11
movb (%r13), %cl
nop
nop
nop
add $34501, %r11

// Faulty Load
mov $0x9bd9a0000000f35, %r13
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%r13), %ebx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'00': 5013, '54': 10549}
54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 00 00 54 54 00 54 54 54 54 54 00 54 54 00 54 54 00 54 54 54 54 54 00 00 54 54 54 54 00 54 00 54 54 54 54 54 00 00 00 00 54 54 54 00 54 00 00 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 00 00 54 54 54 00 54 54 54 54 54 00 54 54 54 00 54 54 54 00 00 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 00 00 54 00 00 54 00 54 54 54 54 00 00 54 00 00 00 00 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 00 00 54 00 00 00 54 54 00 54 00 00 00 54 54 54 00 54 00 54 00 00 00 54 54 00 54 00 54 00 54 54 54 00 54 54 54 00 54 00 54 54 54 00 54 54 00 00 54 54 00 54 54 54 00 54 00 54 00 54 54 00 54 54 54 00 00 00 00 54 54 54 54 54 00 54 54 00 54 54 00 54 54 00 00 00 54 54 54 00 00 54 54 54 54 54 54 00 00 54 00 00 00 54 54 54 00 54 54 54 54 00 54 00 54 00 00 54 00 54 00 54 54 54 00 00 00 54 54 54 54 54 00 00 00 54 54 00 54 54 00 00 00 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 00 00 00 54 54 54 00 54 54 00 54 54 54 00 54 54 00 00 54 54 54 54 54 00 54 54 54 54 00 54 54 00 00 54 54 54 00 54 54 54 00 54 54 54 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 00 54 00 54 54 00 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 00 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 54 00 54 54 00 00 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 00 00 00 00 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 00 00 54 54 54 54 54 00 00 00 54 54 00 00 54 54 54 54 00 54 54 54 00 00 54 00 54 00 54 54 54 54 00 00 00 54 00 00 54 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 00 54 00 00 54 54 00 00 54 00 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 00 00 00 54 00 00 54 54 54 54 54 54 00 54 54 00 54 54 00 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 00 54 54 54 00 54 54 00 54 54 00 00 00 54 00 54 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 00 00 54 00 00 54 00 54 54 00 54 54 54 00 54 54 00 54 54 54 54 54 54 00 54 54 00 00 54 00 00 00 00 54 54 00 54 00 00 00 54 54 54 00 54 00 00 54 00 54 00 54 54 00 54 00 54 00 54 54 54 54 00 54 00 00 54 54 00 54 54 00 00 00 54 00 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 00 54 00 54 00 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 00 54 00 54 54 54 54 54 00 00 00 54 54 54 54 54 00 54 00 54 54 54 54 00 54 54 00 54 54 54 54 00 00 00 00 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 00 00 00 00 54 54 54 54 54 54
*/
