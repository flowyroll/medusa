.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x166ab, %rsi
lea addresses_WT_ht+0x772f, %rdi
nop
nop
inc %r13
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
add $24980, %r15
lea addresses_A_ht+0x9857, %rbp
nop
nop
cmp %r9, %r9
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x180b7, %r13
nop
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%r13)
nop
nop
nop
and $46126, %r9
lea addresses_A_ht+0x647f, %rcx
nop
nop
nop
dec %r9
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub $51003, %rdi
lea addresses_A_ht+0x5d6f, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
movb (%rcx), %r13b
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xacd7, %rsi
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x18d57, %rcx
nop
nop
and %r9, %r9
movb (%rcx), %r13b
nop
nop
cmp $44316, %rdi
lea addresses_A_ht+0x5ba7, %rsi
lea addresses_WC_ht+0x2de7, %rdi
nop
sub %rbp, %rbp
mov $104, %rcx
rep movsl
xor $7288, %r15
lea addresses_D_ht+0x19c33, %rsi
lea addresses_WT_ht+0x185d7, %rdi
clflush (%rsi)
sub $1977, %r9
mov $75, %rcx
rep movsb
nop
nop
dec %r13
lea addresses_WC_ht+0x1dc13, %rdi
cmp $16136, %rsi
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r9
and %rbp, %rbp
lea addresses_WT_ht+0x190cb, %rcx
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
cmp $19836, %r15
lea addresses_WC_ht+0x16857, %rsi
lea addresses_D_ht+0x1ff2, %rdi
dec %r8
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
add $23831, %r8
lea addresses_WC_ht+0xd457, %rsi
lea addresses_WC_ht+0x1cb57, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $79, %rcx
rep movsw
add $35626, %rdi
lea addresses_D_ht+0x1807, %r9
clflush (%r9)
nop
nop
add $42017, %rcx
mov (%r9), %rdi
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rsi

// Store
lea addresses_D+0x1f157, %r14
nop
nop
nop
nop
xor $45030, %rbp
movw $0x5152, (%r14)
nop
nop
nop
add $3430, %r14

// Store
lea addresses_WT+0x13017, %r11
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
add $31385, %r12

// Store
lea addresses_normal+0x11857, %r11
nop
nop
nop
nop
nop
cmp %r8, %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_PSE+0x15057, %rax
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%rax)
add %r11, %r11

// Store
lea addresses_WT+0x4e57, %rsi
nop
nop
nop
nop
and $57820, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
sub $16701, %r12

// Store
lea addresses_UC+0x1b117, %rbp
nop
cmp $56647, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_WC+0x11292, %r11
clflush (%r11)
nop
nop
add $7109, %r8
movl $0x51525354, (%r11)
add %rbp, %rbp

// Store
lea addresses_UC+0x16057, %r12
nop
nop
nop
nop
nop
sub $54836, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
cmp $9660, %rbp

// Faulty Load
lea addresses_UC+0x16857, %r12
nop
nop
nop
sub $20360, %r11
mov (%r12), %ax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
