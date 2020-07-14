.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xe6bd, %rax
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rax)
nop
nop
and %r12, %r12
lea addresses_D_ht+0x150fd, %rdx
and %r11, %r11
movb $0x61, (%rdx)
cmp $49003, %rax
lea addresses_UC_ht+0x627d, %rbx
nop
nop
nop
and $61865, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x18045, %r14
inc %rbx
movb $0x61, (%r14)
sub %rax, %rax
lea addresses_D_ht+0x18d7d, %rbx
nop
nop
xor $38799, %r11
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
add $58160, %rdi
lea addresses_D_ht+0xdafd, %rsi
lea addresses_WC_ht+0x1575d, %rdi
sub $21758, %r11
mov $68, %rcx
rep movsq
xor $10547, %r14
lea addresses_WC_ht+0xea7d, %rsi
nop
nop
sub $44839, %r14
movb (%rsi), %al
nop
add %rax, %rax
lea addresses_normal_ht+0x887d, %rax
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rax)
nop
cmp $63063, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rsi

// Store
lea addresses_A+0x1dbbd, %rbx
nop
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
mfence

// Faulty Load
lea addresses_WT+0x107d, %r11
xor $50334, %rsi
mov (%r11), %bx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'39': 179}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
