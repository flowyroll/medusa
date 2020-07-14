.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15b8a, %r12
nop
nop
nop
nop
xor $44308, %rdx
mov (%r12), %ecx
nop
nop
nop
nop
xor $55277, %r10
lea addresses_WC_ht+0x1206a, %rbx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%rbx), %edx
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x9c6a, %rsi
lea addresses_UC_ht+0xd5e2, %rdi
clflush (%rdi)
nop
nop
and $51579, %rbp
mov $58, %rcx
rep movsw
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x1a06a, %rsi
lea addresses_WC_ht+0x1006a, %rdi
xor %rdx, %rdx
mov $28, %rcx
rep movsl
nop
nop
cmp $21215, %rcx
lea addresses_D_ht+0x11fea, %rcx
nop
nop
nop
and $63694, %r12
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x11a7e, %rsi
lea addresses_UC_ht+0x1324a, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $26, %rcx
rep movsw
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x406a, %r10
nop
nop
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r10)
nop
add $7184, %rdi
lea addresses_A_ht+0xfa6a, %rsi
lea addresses_normal_ht+0x1406a, %rdi
dec %rbx
mov $17, %rcx
rep movsl
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x14caa, %r10
nop
nop
nop
add $15595, %r12
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rbx
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1eea, %rbp
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
and $38024, %rcx

// REPMOV
lea addresses_US+0x1e09a, %rsi
lea addresses_PSE+0x16c6a, %rdi
nop
nop
nop
sub %r10, %r10
mov $48, %rcx
rep movsb
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_normal+0x1146a, %rdi
and %rcx, %rcx
mov (%rdi), %ebx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'34': 1}
34
*/
