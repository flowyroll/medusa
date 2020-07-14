.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1141c, %rcx
nop
nop
nop
nop
and $19769, %rax
movb (%rcx), %r12b
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x13dec, %r14
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
nop
nop
nop
nop
cmp $7055, %rbp
lea addresses_normal_ht+0x54b4, %r12
nop
sub %r14, %r14
mov (%r12), %eax
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xc4b4, %rsi
lea addresses_A_ht+0x10934, %rdi
nop
nop
nop
dec %rbx
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $13846, %rcx
lea addresses_D_ht+0x31b4, %rsi
lea addresses_WC_ht+0x1265c, %rdi
nop
nop
xor $48303, %rbp
mov $47, %rcx
rep movsl
nop
and $39045, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x110b4, %rdi
sub $35361, %rcx
movb $0x51, (%rdi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_D+0xb4, %r11
nop
nop
nop
nop
nop
cmp $34618, %rax
mov (%r11), %r15w
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'36': 17}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
