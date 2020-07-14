.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf829, %r10
nop
sub $30378, %rbx
movb (%r10), %r12b
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x8a89, %rsi
lea addresses_D_ht+0x5ee4, %rdi
nop
nop
nop
dec %rbx
mov $26, %rcx
rep movsq
dec %rdi
lea addresses_UC_ht+0xaf29, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
movb (%rbx), %cl
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_normal+0x17f29, %r15
nop
and %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_D+0xef29, %r10
sub %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
sub $36671, %r10

// Store
lea addresses_normal+0x2f29, %rax
nop
and %r11, %r11
movw $0x5152, (%rax)
nop
nop
nop
cmp $4392, %r11

// Faulty Load
lea addresses_D+0xef29, %rbp
nop
nop
and %rax, %rax
vmovaps (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 113}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
