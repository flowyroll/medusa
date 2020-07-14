.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12c8a, %r13
nop
nop
xor $21910, %rax
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0xaa72, %r9
nop
add %r15, %r15
movb (%r9), %bl
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x2b0a, %rsi
lea addresses_WT_ht+0xd8a, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $48151, %rbx
mov $67, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1e40a, %rsi
lea addresses_normal_ht+0x378a, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $72, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbx
push %rcx

// Store
lea addresses_WC+0x358a, %r11
and %rbx, %rbx
movw $0x5152, (%r11)
nop
nop
nop
sub $22964, %r13

// Faulty Load
mov $0x4164a2000000078a, %rcx
cmp $47676, %r13
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'06': 1, '6a': 1, '74': 2, '49': 4404, '00': 17421}
06 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 49 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 49 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 49 00 00 49 49 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 49 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00
*/
