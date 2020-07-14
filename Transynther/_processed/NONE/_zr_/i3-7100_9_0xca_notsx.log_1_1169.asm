.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1537a, %r14
clflush (%r14)
nop
add $41917, %rdx
movl $0x61626364, (%r14)
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x14baa, %rsi
inc %r11
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
add %rbp, %rbp
lea addresses_normal_ht+0x106c, %r11
nop
inc %rbx
movb (%r11), %dl
and $41783, %rdx
lea addresses_WT_ht+0xbe6a, %rsi
lea addresses_UC_ht+0x17e2a, %rdi
clflush (%rsi)
nop
nop
nop
dec %r12
mov $93, %rcx
rep movsl
nop
nop
nop
cmp $26858, %rdi
lea addresses_normal_ht+0x17b72, %r14
nop
add %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
nop
sub $21585, %r12
lea addresses_A_ht+0x68ee, %rdx
nop
sub $19615, %rdi
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm2
vpextrq $0, %xmm2, %r14
sub %rcx, %rcx
lea addresses_UC_ht+0x9cfa, %rbp
nop
nop
nop
nop
xor $43124, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x14d54, %rdi
nop
nop
nop
nop
nop
add $15990, %r12
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
sub $4612, %rbp
lea addresses_WC_ht+0x8895, %rsi
lea addresses_WT_ht+0x417b, %rdi
nop
nop
xor %rbp, %rbp
mov $100, %rcx
rep movsq
nop
nop
nop
xor $25205, %rcx
lea addresses_normal_ht+0x1162a, %rsi
lea addresses_normal_ht+0x1db64, %rdi
nop
xor %rbp, %rbp
mov $122, %rcx
rep movsl
nop
nop
sub $45607, %rcx
lea addresses_UC_ht+0x1e42a, %rsi
lea addresses_D_ht+0x13e2a, %rdi
nop
nop
dec %r12
mov $124, %rcx
rep movsl
and %r14, %r14
lea addresses_A_ht+0xe92a, %r11
nop
nop
cmp $55632, %r12
mov (%r11), %dx
xor %rbx, %rbx
lea addresses_D_ht+0x1c9ca, %rbp
sub %r14, %r14
mov (%rbp), %rdx
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x9aea, %rcx
nop
nop
xor $22903, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
sub %r14, %r14

// REPMOV
lea addresses_US+0x1f22a, %rsi
lea addresses_PSE+0xdaa, %rdi
nop
nop
nop
xor $38564, %rdx
mov $22, %rcx
rep movsw
sub $4734, %r11

// Faulty Load
lea addresses_A+0x11e2a, %rbp
nop
nop
nop
nop
nop
sub $15981, %rdx
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_US', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
