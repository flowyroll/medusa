.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xbd7, %r11
nop
nop
nop
sub %rbx, %rbx
mov (%r11), %r13d
nop
sub $7561, %rdi
lea addresses_WT_ht+0xf557, %rsi
lea addresses_WT_ht+0x105d7, %rdi
xor %r9, %r9
mov $3, %rcx
rep movsl
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x77b7, %rsi
lea addresses_A_ht+0x1929f, %rdi
clflush (%rsi)
nop
sub $24639, %r11
mov $49, %rcx
rep movsw
nop
nop
nop
nop
nop
and $28999, %r13
lea addresses_D_ht+0x9fd7, %r11
nop
nop
cmp $34886, %r9
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x17267, %rsi
lea addresses_normal_ht+0x3e4f, %rdi
add %r13, %r13
mov $78, %rcx
rep movsw
xor $3932, %rdi
lea addresses_WC_ht+0x11fd7, %r11
sub %rcx, %rcx
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x17bd7, %rsi
lea addresses_UC_ht+0x1a5d7, %rdi
nop
nop
nop
and $49953, %r13
mov $32, %rcx
rep movsq
nop
nop
add $12753, %rcx
lea addresses_UC_ht+0x846f, %rcx
nop
nop
sub %r9, %r9
movw $0x6162, (%rcx)
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1dd17, %r9
nop
nop
mfence
mov (%r9), %bx
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x910b, %rbx
nop
nop
nop
add %r11, %r11
movb (%rbx), %r13b
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1ee8f, %rsi
lea addresses_D_ht+0x72d7, %rdi
nop
xor %rbx, %rbx
mov $111, %rcx
rep movsl
xor %r13, %r13
lea addresses_WT_ht+0xc9d7, %r11
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
xor $44902, %rdi
lea addresses_A_ht+0x187d7, %rsi
lea addresses_UC_ht+0x1125f, %rdi
cmp $14580, %r12
mov $114, %rcx
rep movsq
nop
nop
nop
nop
cmp $23098, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rdx

// Load
lea addresses_US+0x1b2d7, %r12
nop
sub %rax, %rax
mov (%r12), %r10
nop
nop
nop
add %r12, %r12

// Store
lea addresses_A+0x1a7d7, %r9
nop
nop
nop
nop
nop
xor $29863, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
xor %r10, %r10

// Store
lea addresses_A+0x183eb, %r12
nop
nop
add %r13, %r13
movl $0x51525354, (%r12)
nop
nop
nop
nop
inc %r12

// Load
lea addresses_A+0x18ad7, %rdx
nop
nop
nop
cmp %r9, %r9
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
and %r9, %r9

// Store
mov $0x1d7, %rbx
clflush (%rbx)
nop
cmp $63513, %r10
movw $0x5152, (%rbx)
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_WC+0x1e7d7, %rbx
xor %r10, %r10
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_A+0xd7d7, %r13
nop
nop
nop
nop
cmp $4928, %r9
movb (%r13), %bl
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'58': 3}
58 58 58
*/
