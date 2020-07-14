.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x452f, %rsi
lea addresses_UC_ht+0xaf5, %rdi
nop
cmp $48711, %r11
mov $107, %rcx
rep movsb
nop
add %r14, %r14
lea addresses_normal_ht+0x152b5, %r9
cmp %rbx, %rbx
movb $0x61, (%r9)
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x1e575, %r14
clflush (%r14)
nop
inc %rbx
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1b301, %rsi
lea addresses_US+0x42b5, %rdi
nop
nop
nop
add $40387, %r15
mov $56, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_US+0x42b5, %rdi
nop
nop
nop
sub $54920, %r9
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_US+0x42b5, %r15
nop
nop
nop
nop
nop
xor $44545, %rsi
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 1}
00
*/
