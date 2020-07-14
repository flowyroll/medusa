.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5adc, %rbx
nop
nop
nop
and $62941, %r13
movl $0x61626364, (%rbx)
and $37401, %rax
lea addresses_A_ht+0x1e91c, %r10
nop
nop
nop
inc %rdx
mov (%r10), %si
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x373c, %r13
nop
and %rax, %rax
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x8a04, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add $20836, %rbx
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x1bee0, %rsi
lea addresses_normal_ht+0x15e1c, %rdi
nop
add $29206, %rdx
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x1a4dc, %rsi
lea addresses_UC_ht+0xc06c, %rdi
inc %rdx
mov $59, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xbedc, %r12
clflush (%r12)
nop
nop
xor $48869, %rdx
mov (%r12), %r10w
nop
nop
xor $54211, %rcx
lea addresses_WT_ht+0x1ac1b, %r10
nop
nop
nop
sub %rbx, %rbx
movl $0x61626364, (%r10)
nop
cmp $8105, %r12
lea addresses_normal_ht+0xc8bc, %r12
nop
nop
nop
nop
dec %r13
movb $0x61, (%r12)
nop
nop
nop
nop
xor $56001, %rsi
lea addresses_A_ht+0x333c, %rsi
lea addresses_WC_ht+0x1125c, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $73, %rcx
rep movsq
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0xe85c, %r10
nop
nop
nop
add $64695, %rdx
movups (%r10), %xmm1
vpextrq $1, %xmm1, %r12
cmp %rdx, %rdx
lea addresses_WT_ht+0x19ddc, %rsi
lea addresses_A_ht+0x182dc, %rdi
clflush (%rsi)
cmp %rbx, %rbx
mov $17, %rcx
rep movsw
nop
nop
nop
nop
cmp $3729, %rcx
lea addresses_WT_ht+0x1d45c, %rsi
nop
nop
nop
sub $29720, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rsi)
nop
add %rcx, %rcx
lea addresses_A_ht+0x1d79c, %rcx
nop
nop
cmp %rdx, %rdx
movb $0x61, (%rcx)
nop
add $23872, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1545c, %r11
nop
cmp $2731, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
cmp %rsi, %rsi

// Faulty Load
lea addresses_D+0xdc5c, %r13
nop
nop
nop
nop
dec %r9
mov (%r13), %dx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'36': 246}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
