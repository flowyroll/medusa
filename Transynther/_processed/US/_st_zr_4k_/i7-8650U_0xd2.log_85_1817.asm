.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xef15, %r14
nop
nop
nop
nop
nop
dec %r10
mov (%r14), %rbx
nop
nop
nop
nop
xor $41682, %r10
lea addresses_normal_ht+0x11b65, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r13), %edi
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x7a5, %r9
nop
nop
sub $18843, %rdx
movb $0x61, (%r9)
nop
and $63666, %r14
lea addresses_D_ht+0x25b9, %rsi
lea addresses_UC_ht+0x1bc25, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r9, %r9
mov $93, %rcx
rep movsb
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0xfd25, %rcx
nop
nop
nop
cmp $43490, %r9
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
sub $13249, %r13
lea addresses_A_ht+0x1c025, %rsi
lea addresses_D_ht+0x19225, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $9, %rcx
rep movsl
sub $38209, %r13
lea addresses_WC_ht+0x1d625, %r9
nop
add %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
nop
cmp $19636, %rbx
lea addresses_WC_ht+0xb8d5, %rsi
lea addresses_D_ht+0xc825, %rdi
nop
nop
nop
nop
and $38848, %rbx
mov $18, %rcx
rep movsb
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0xb825, %rbx
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
and %r9, %r9
lea addresses_D_ht+0x16bdd, %rsi
lea addresses_WT_ht+0x1cb85, %rdi
nop
nop
inc %r9
mov $93, %rcx
rep movsb
nop
add $179, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdx

// Store
mov $0x3d2, %r12
nop
sub $2434, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
nop
sub $40840, %r12

// Store
lea addresses_D+0x19b5d, %rdx
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_D+0x1b825, %rax
nop
cmp %rdx, %rdx
movb $0x51, (%rax)
nop
nop
and $13492, %rdx

// Faulty Load
lea addresses_US+0x15825, %rax
nop
nop
nop
nop
xor $33084, %r11
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'51': 83, '00': 2}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
