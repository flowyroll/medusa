.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xedbf, %r11
nop
nop
nop
and %rbp, %rbp
mov (%r11), %r9w
nop
nop
nop
nop
nop
cmp $14557, %r10
lea addresses_UC_ht+0x5baf, %rax
nop
nop
nop
nop
nop
sub $12455, %r9
mov (%rax), %cx
nop
nop
and %r10, %r10
lea addresses_D_ht+0x195bf, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %r14, %r14
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
nop
nop
sub $1008, %r9
lea addresses_WC_ht+0xbcbf, %rsi
lea addresses_WC_ht+0x1e8ce, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $69, %rcx
rep movsq
nop
nop
nop
xor $50300, %rsi
lea addresses_UC_ht+0x2cbf, %rsi
lea addresses_UC_ht+0x15f3f, %rdi
clflush (%rdi)
nop
nop
nop
dec %r11
mov $99, %rcx
rep movsw
nop
nop
nop
nop
and $34679, %rax
lea addresses_D_ht+0x17eef, %r14
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
and $58294, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0xbf, %r12
nop
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%r12)
and %r13, %r13

// Faulty Load
lea addresses_WC+0xa5bf, %rax
nop
nop
nop
nop
and $31742, %rsi
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'46': 17, '44': 22, '48': 221, '47': 571, '00': 9812, 'a0': 2505, '53': 1250, 'de': 3, '80': 1, 'd2': 1, 'c0': 4, 'd0': 131, 'ff': 7282, '12': 1, 'a6': 5, 'e0': 3}
ff 00 ff a0 ff 00 ff 00 ff a0 ff a0 47 00 00 ff 00 ff 00 48 ff a0 ff 00 ff 00 ff a0 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff a0 ff 00 00 ff 00 ff a0 ff 00 ff 00 ff 00 ff 00 ff 00 53 00 ff 00 00 00 ff a0 ff 00 ff 00 00 ff 00 ff 00 ff 00 00 ff 00 ff d0 00 53 00 ff a0 ff 00 ff 00 00 00 ff 00 ff a0 ff 00 ff 00 ff a0 ff d0 ff 00 ff 00 ff 00 00 00 00 ff a0 ff a0 ff a0 47 00 00 ff 00 00 ff a0 ff 00 ff 00 00 ff 00 ff 00 ff a0 ff 00 ff 00 47 00 ff 00 00 ff 00 ff a0 47 00 ff 00 ff 00 00 ff 00 00 47 00 00 ff 00 ff 00 00 00 53 00 ff 00 ff 00 00 ff 00 00 ff 00 ff 00 00 ff 00 ff 00 00 ff 00 00 47 00 00 ff 00 00 ff a0 ff 00 00 ff a0 00 ff 00 47 00 ff 00 ff 00 ff 00 00 00 00 53 00 ff 00 ff 00 53 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 47 00 ff 00 00 53 00 00 ff 00 ff 00 ff a0 ff a0 53 00 ff 00 ff 00 ff 00 00 00 ff 00 ff 00 00 ff 00 ff 00 ff a0 ff 00 47 00 ff 00 00 00 ff 00 ff a0 ff a0 ff a0 48 ff 00 ff 00 00 ff 00 ff 00 00 47 00 ff 00 ff a0 ff 00 ff 00 53 00 48 00 00 ff 00 ff 00 00 ff 00 ff 00 ff a0 48 ff 00 ff 00 00 ff a0 00 ff 00 48 ff a0 ff 00 00 ff 00 53 00 53 00 ff a0 00 00 00 ff 00 00 47 00 ff 00 ff 00 ff 00 48 ff 00 53 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 47 00 ff 00 ff 00 53 00 ff a0 47 00 ff 00 00 ff 00 ff 00 ff 00 00 00 ff 00 ff 00 ff a0 ff 00 00 ff 00 ff 00 ff 00 53 00 ff 00 00 ff 00 ff 00 48 ff 00 00 00 ff 00 00 00 ff 00 ff 00 ff 00 ff d0 ff 00 00 47 00 ff 00 ff a0 ff 00 ff 00 53 00 00 00 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff a0 ff 00 00 00 00 ff 00 00 ff 00 ff 00 ff 00 53 00 ff 00 ff 00 ff 00 ff 00 ff 00 47 00 53 00 ff 00 53 00 00 00 ff 00 ff 00 00 ff 00 53 00 ff 00 00 ff 00 53 00 ff a0 47 00 53 00 ff 00 00 47 00 00 ff 00 ff a0 00 00 ff 00 ff a0 00 53 00 ff 00 00 00 ff 00 53 00 00 ff 00 ff 00 ff 00 00 00 00 ff a0 ff 00 00 47 00 00 00 ff a0 ff 00 ff 00 ff 00 ff 00 53 00 ff 00 47 00 ff 00 ff 00 ff a0 53 00 ff a0 00 53 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 53 00 ff 00 00 ff 00 ff 00 ff 00 53 00 ff a0 00 00 53 00 00 00 ff a0 00 ff d0 ff a0 ff 00 ff 00 00 00 ff 00 ff 00 00 00 ff 00 ff 00 00 47 00 ff 00 ff 00 ff 00 ff 00 ff a0 ff 00 ff 00 ff 00 00 ff a0 00 ff 00 ff 00 ff 00 ff 00 ff a0 ff 00 00 ff 00 ff 00 53 00 ff 00 ff d0 ff 00 ff 00 ff 00 00 53 00 00 00 ff a0 00 00 00 00 ff 00 00 ff 00 ff 00 ff 00 53 00 47 00 ff 00 ff a0 ff a0 48 ff 00 ff a0 00 47 00 00 53 00 00 00 00 00 ff 00 ff a0 ff 00 ff 00 48 00 00 ff a0 00 ff 00 ff 00 ff a0 ff 00 48 ff a0 ff a0 00 ff 00 ff 00 00 53 00 ff 00 ff 00 00 00 ff a0 ff a0 ff 00 53 00 ff 00 ff 00 ff 00 ff 00 ff 00 53 00 ff a0 53 00 ff d0 00 53 00 46 ff 00 ff 00 ff 00 53 00 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff a0 ff 00 00 ff a0 ff a0 ff 00 ff 00 53 00 00 ff a0 ff 00 00 ff 00 00 00 00 53 00 ff 00 00 48 ff 00 00 47 00 ff 00 53 00 ff 00 ff 00 ff 00 ff a0 53 00 ff 00 47 00 ff a0 00 00 ff 00 53 00 00 00 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 00 53 00 c0 ff 00 ff 00 00 ff a0 ff 00 48 ff a0 ff 00 ff a0 00 ff a0 00 53 00 ff d0 ff a0
*/
