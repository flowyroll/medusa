.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xdecf, %r8
nop
dec %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %r8
movaps %xmm3, (%r8)
nop
nop
nop
nop
sub $24403, %rsi
lea addresses_WC_ht+0x2b77, %rsi
lea addresses_WT_ht+0x152c1, %rdi
nop
nop
nop
nop
sub $8701, %r15
mov $29, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x19f77, %r11
xor $37059, %rbx
mov $0x6162636465666768, %r15
movq %r15, (%r11)
nop
and $40646, %r11
lea addresses_UC_ht+0x11f9f, %rsi
nop
nop
cmp %rdi, %rdi
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x59c0, %rsi
lea addresses_D_ht+0xf0b7, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $8535, %r11
mov $64, %rcx
rep movsw
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x107f7, %rsi
lea addresses_WC_ht+0x14c2b, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r11
mov $11, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x14177, %rsi
lea addresses_UC_ht+0x544b, %rdi
nop
nop
nop
nop
nop
and $21887, %rax
mov $58, %rcx
rep movsl
nop
and $56266, %r15
lea addresses_A_ht+0x1b577, %r11
nop
nop
nop
nop
add %r8, %r8
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
add %rax, %rax
lea addresses_A_ht+0x126f3, %rax
clflush (%rax)
nop
nop
xor $20763, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x10377, %rbx
nop
nop
nop
xor %r15, %r15
mov (%rbx), %r11w
xor %r15, %r15
lea addresses_A_ht+0x1c6fd, %rsi
lea addresses_WC_ht+0x28b7, %rdi
nop
inc %r8
mov $123, %rcx
rep movsw
nop
nop
and $32105, %r8
lea addresses_A_ht+0x1d881, %rax
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
and $51934, %rsi
lea addresses_UC_ht+0x1cca7, %rsi
lea addresses_D_ht+0x12a93, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $56, %rcx
rep movsw
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x1af77, %rsi
clflush (%rsi)
add %r11, %r11
movw $0x6162, (%rsi)
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x2257, %rbx
nop
cmp %rsi, %rsi
movb (%rbx), %r8b
nop
nop
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_D+0xc463, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor $270, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
dec %r10

// Store
mov $0xc17, %rsi
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movaps %xmm1, (%rsi)
nop
cmp $31761, %rdx

// Faulty Load
lea addresses_D+0x12377, %rdx
cmp %rbp, %rbp
mov (%rdx), %r10w
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'36': 128}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
