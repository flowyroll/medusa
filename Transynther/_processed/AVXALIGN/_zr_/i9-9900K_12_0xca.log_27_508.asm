.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4aa9, %rsi
lea addresses_A_ht+0x1b7ed, %rdi
nop
nop
nop
and $36792, %r8
mov $25, %rcx
rep movsw
nop
nop
nop
sub $1707, %rsi
lea addresses_normal_ht+0x1aea9, %rax
nop
nop
nop
nop
sub $23266, %r15
movl $0x61626364, (%rax)
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x3ae9, %rcx
nop
nop
nop
nop
xor $18257, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WC+0x25e9, %r9
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
nop
nop
inc %rdx

// Store
lea addresses_UC+0x57cb, %r11
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r11)
and %rsi, %rsi

// Store
mov $0x1a9, %rdx
nop
cmp $378, %rsi
movl $0x51525354, (%rdx)
xor %rcx, %rcx

// Faulty Load
lea addresses_WC+0x15aa9, %rsi
nop
nop
add $47835, %rcx
vmovntdqa (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
