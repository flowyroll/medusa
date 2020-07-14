.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8109, %rsi
lea addresses_WT_ht+0x143f9, %rdi
nop
nop
nop
nop
nop
cmp $7065, %r15
mov $64, %rcx
rep movsb
nop
and %r9, %r9
lea addresses_UC_ht+0x1b619, %rsi
lea addresses_WC_ht+0x15be9, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $79, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x9c89, %rdi
cmp %r11, %r11
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
add $42266, %r15
lea addresses_A_ht+0x5b09, %rsi
lea addresses_UC_ht+0x1e8c1, %rdi
clflush (%rsi)
nop
nop
inc %rdx
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x15459, %rsi
lea addresses_WT_ht+0x1e137, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
cmp %r12, %r12
mov $65, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_UC_ht+0x8709, %rdi
clflush (%rdi)
nop
nop
xor $3291, %rsi
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
nop
cmp $14465, %r9
lea addresses_UC_ht+0xf09, %rsi
lea addresses_WC_ht+0x4d09, %rdi
nop
nop
nop
add $5506, %rdx
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0xbb09, %rdi
nop
nop
and %r11, %r11
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xd09, %rsi
lea addresses_WT_ht+0xfb09, %rdi
nop
nop
nop
nop
nop
sub $56520, %r12
mov $14, %rcx
rep movsb
nop
nop
nop
cmp $34039, %r12
lea addresses_A_ht+0x1a589, %rsi
lea addresses_WT_ht+0x4c25, %rdi
nop
nop
nop
nop
nop
cmp $49959, %r15
mov $1, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1bb89, %r15
nop
nop
nop
nop
xor %r12, %r12
movw $0x6162, (%r15)
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x8dd1, %rdx
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
dec %r9

// Store
lea addresses_normal+0x10709, %rsi
sub %rcx, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
and $52602, %r15

// Store
lea addresses_WC+0x9b09, %rcx
nop
and $4543, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
cmp $16083, %r9

// Store
lea addresses_D+0x11c89, %rcx
nop
add $41721, %r10
movb $0x51, (%rcx)
inc %r15

// Load
lea addresses_PSE+0x899a, %rax
and %r10, %r10
mov (%rax), %r15w
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x14f09, %r15
clflush (%r15)
nop
nop
nop
nop
xor %r9, %r9
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
