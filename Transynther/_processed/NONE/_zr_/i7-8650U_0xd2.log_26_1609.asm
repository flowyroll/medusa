.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x349c, %rsi
nop
nop
nop
nop
nop
sub $17816, %r12
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x139a4, %rsi
lea addresses_A_ht+0x1ea4, %rdi
nop
nop
sub $3130, %rax
mov $19, %rcx
rep movsq
add %r12, %r12
lea addresses_A_ht+0x6f64, %r12
nop
nop
nop
nop
mfence
mov (%r12), %rdi
nop
inc %r12
lea addresses_WC_ht+0x15b74, %rdx
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
add $31814, %rbx
lea addresses_WC_ht+0x162a4, %r12
nop
nop
nop
add %rcx, %rcx
mov (%r12), %rdi
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x27ca, %rbx
clflush (%rbx)
add $37135, %rsi
movw $0x6162, (%rbx)
add $64761, %rbx
lea addresses_WC_ht+0x3600, %r12
nop
nop
nop
add %rsi, %rsi
movb (%r12), %al
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xd7e4, %rbx
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rbx)
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x82a4, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x15a4, %rsi
lea addresses_WC_ht+0x560e, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $60740, %r9
mov $52, %rcx
rep movsl
nop
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xe6a4, %rsi
lea addresses_D+0x16aa4, %rdi
nop
nop
nop
and $22614, %r8
mov $78, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_PSE+0xf14c, %r13
add %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
add $48866, %rcx

// Faulty Load
lea addresses_D+0x16aa4, %rbx
nop
nop
nop
nop
and %r8, %r8
mov (%rbx), %esi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'00': 26}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
