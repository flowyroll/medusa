.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14b20, %rcx
cmp %r11, %r11
movb (%rcx), %bl
nop
nop
nop
nop
and $10399, %rcx
lea addresses_normal_ht+0x6660, %r8
nop
nop
inc %r12
mov $0x6162636465666768, %r11
movq %r11, (%r8)
add $54973, %r11
lea addresses_WC_ht+0x1760, %rbp
dec %r12
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
xor $1083, %r11
lea addresses_normal_ht+0x1e420, %rsi
lea addresses_UC_ht+0x7c60, %rdi
nop
nop
add $8598, %rbx
mov $19, %rcx
rep movsl
nop
nop
nop
cmp $42202, %r8
lea addresses_WT_ht+0x17260, %rcx
nop
nop
add $16580, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor $40357, %rbx
lea addresses_normal_ht+0x5b60, %r8
clflush (%r8)
xor $46350, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
nop
sub %r11, %r11
lea addresses_D_ht+0x18e30, %rsi
nop
cmp $41080, %rbx
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x16160, %rsi
lea addresses_WC_ht+0xf0a6, %rdi
nop
nop
nop
nop
nop
add $33939, %rbp
mov $86, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1a71e, %r12
nop
add %rbx, %rbx
movb (%r12), %cl
nop
xor $19490, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x1a9a0, %r10
and %rsi, %rsi
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_US+0x1ce60, %rbp
and %r14, %r14
mov (%rbp), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 152}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
