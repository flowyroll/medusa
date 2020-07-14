.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d889, %rsi
lea addresses_A_ht+0x169c1, %rdi
and %r8, %r8
mov $113, %rcx
rep movsb
nop
nop
dec %r15
lea addresses_WC_ht+0x18741, %r11
nop
nop
nop
nop
cmp $13505, %rbx
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0x1c3c1, %rsi
lea addresses_D_ht+0x11fe1, %rdi
dec %rbp
mov $14, %rcx
rep movsl
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0xe5c1, %rbp
nop
nop
nop
cmp %rsi, %rsi
movb (%rbp), %r15b
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1e601, %rsi
nop
nop
nop
nop
nop
add $15781, %rcx
movb (%rsi), %bl
nop
nop
xor $41647, %rsi
lea addresses_UC_ht+0x1c4c1, %rsi
clflush (%rsi)
nop
nop
nop
sub $61822, %rbp
movb (%rsi), %r15b
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x1afa1, %r8
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r8)
cmp %r11, %r11
lea addresses_WC_ht+0xf471, %r15
nop
nop
nop
nop
and $37707, %rdi
mov (%r15), %ebx
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0xd5c1, %rbp
sub %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
cmp $14752, %r11
lea addresses_normal_ht+0x3ba5, %r11
nop
nop
sub %r8, %r8
movups (%r11), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x10a61, %r8
nop
nop
nop
nop
nop
add $59277, %rsi
movb (%r8), %cl
nop
nop
nop
add $18638, %r15
lea addresses_WC_ht+0x24a1, %rdi
nop
nop
nop
nop
nop
dec %rbx
movl $0x61626364, (%rdi)
nop
sub %r15, %r15
lea addresses_WC_ht+0xd041, %rbp
nop
nop
and %r15, %r15
mov (%rbp), %ecx
nop
nop
nop
nop
sub $63385, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbx

// Faulty Load
lea addresses_WC+0x135c1, %r8
nop
nop
nop
xor $5398, %r15
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'44': 13233, '45': 7354, '00': 535, '48': 707}
44 44 44 44 44 44 44 44 44 44 44 00 44 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 45 45 44 45 44 45 45 45 44 44 44 45 45 45 44 45 44 45 45 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 44 45 44 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 44 44 45 45 45 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 44 45 44 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 48 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 44 44 44 44 44 44 00 44 48 44 44 44 44 44 44 44 44 44 45 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 00 44 48 44 44 45 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 45 44 44 44 48 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 45 44 45 45 45 44 45 44 45 45 45 44 45 44 45 44 45 44 45 44 44 44 45 44 44 45 45 44 45 45 44 45 45 45 44 45 45 44 44 44 45 44 45 45 45 44 45 44 45 45 45 44 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 44 44 44 45 44 45 44 45 45 45 45 45 44 45 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 44 00 44 45 44 00 44 48 44 45 44 44 44 00 44 45 44 44 44 45 44 45 44 44 48 48 44 44 44 45 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 45 44 00 44 45 44 44 44 44 44 45 44 44 44 45 44 00 44 45 44 44 44 44 44 48 44 44 44 45 44 44 44 44 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 45 44 45 45 44 45 44 45 44 45 44 45 44 44 45 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 44 45 45 44 45 44 45 44 44 44 45 44 45 44 45 44 44 45 45 44 45 44 44 45 44 45 44 45 45 44 45 45 45 45 45 44 45 44 44 45 45 48 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 44 45 45 45 45 44 45 44 45 44 45 45 45 44 45 45 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 44 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 45 45 44 45 45 45 44 45 45 45 44 44 44 45 45 45 44 45 44 45 44 45 44 45 44 44 45 45 44 44 45 44 45 44 45 45 44 45 44 45 45 45 44 45 44 45 45 45 45 44 45 45 44 45 44 45 45 45 44 45 44 45 44 45 45 44 45 45 44 45 44 45 44 45 44 45 45 45 45 45 44 44 48 44 45 44 44 44 48 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 45 44 44 44 45
*/
