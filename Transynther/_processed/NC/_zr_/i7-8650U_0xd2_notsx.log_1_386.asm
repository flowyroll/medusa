.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xb938, %rcx
nop
nop
nop
nop
nop
add $42100, %rdx
mov (%rcx), %r14
sub $13277, %r10
lea addresses_D_ht+0x15058, %rsi
lea addresses_WT_ht+0xcfb8, %rdi
nop
cmp $54314, %rax
mov $30, %rcx
rep movsw
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x9038, %rdi
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x19638, %rsi
clflush (%rsi)
nop
nop
xor $311, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm0
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm0, (%rsi)
nop
xor %r10, %r10
lea addresses_A_ht+0x7f4d, %rsi
lea addresses_A_ht+0x1e638, %rdi
nop
nop
nop
nop
sub $23416, %rbx
mov $109, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1b638, %rsi
lea addresses_A_ht+0x2a38, %rdi
nop
nop
xor $20716, %rdx
mov $52, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x1d78, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp $11628, %rcx
mov (%rdx), %rbx
nop
nop
nop
xor $10628, %rcx
lea addresses_WT_ht+0x1ac38, %rax
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rax), %edi
nop
nop
nop
and $11273, %r14
lea addresses_A_ht+0x1e538, %rbx
nop
nop
add %rdx, %rdx
mov (%rbx), %cx
nop
nop
dec %r14
lea addresses_D_ht+0xe8f8, %r10
nop
nop
nop
nop
nop
inc %rbx
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
nop
nop
cmp $38144, %r14
lea addresses_normal_ht+0x18fb8, %rsi
lea addresses_D_ht+0x6638, %rdi
nop
nop
nop
sub $48091, %r14
mov $33, %rcx
rep movsq
nop
add $60949, %r10
lea addresses_normal_ht+0xf43, %rdi
nop
nop
nop
nop
dec %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub $57535, %rsi
lea addresses_WC_ht+0x3764, %rax
clflush (%rax)
sub $10950, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rax)
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xe024, %r11
nop
sub $9180, %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_normal+0x19238, %rsi
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_D+0x10e38, %rdi
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movntdq %xmm0, (%rdi)
nop
add $60174, %rdi

// Store
lea addresses_UC+0x1e828, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%rdi)
nop
add %r10, %r10

// Store
mov $0x6d8, %rdi
nop
nop
xor $33316, %rbp
movl $0x51525354, (%rdi)
nop
cmp $56823, %rdi

// Faulty Load
mov $0x6d47fc0000000e38, %r10
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1}
00
*/
