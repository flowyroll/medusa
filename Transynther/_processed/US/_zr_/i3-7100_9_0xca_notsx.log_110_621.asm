.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19709, %rsi
nop
xor $36871, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm4, (%rsi)
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x1c092, %rcx
nop
inc %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rcx)
cmp $50085, %r15
lea addresses_WT_ht+0x18292, %rdi
nop
nop
nop
sub $42955, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
and $32972, %rdi
lea addresses_WC_ht+0x15082, %r15
xor $31513, %r11
movw $0x6162, (%r15)
add $53499, %rcx
lea addresses_A_ht+0x9b4a, %rsi
nop
nop
cmp $62224, %rcx
movb (%rsi), %dl
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x931a, %r9
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
sub $43372, %r15
lea addresses_D_ht+0xd112, %r9
nop
nop
xor %r11, %r11
movw $0x6162, (%r9)
cmp $46602, %r15
lea addresses_WT_ht+0x12092, %r11
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r11)
nop
sub $31973, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x6892, %rdx
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rdx), %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'00': 110}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
