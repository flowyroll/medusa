.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1ac26, %r10
nop
nop
nop
nop
xor $39362, %r11
movw $0x6162, (%r10)
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1cf9e, %r10
nop
nop
xor $3904, %r9
mov (%r10), %rsi
nop
nop
nop
nop
nop
xor $42774, %r10
lea addresses_WT_ht+0x1c3ac, %rsi
lea addresses_D_ht+0xdcf6, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $87, %rcx
rep movsb
xor %rax, %rax
lea addresses_UC_ht+0x14de6, %rdi
and %r9, %r9
mov (%rdi), %r10w
nop
add %r11, %r11
lea addresses_A_ht+0xfb90, %rsi
lea addresses_UC_ht+0xb446, %rdi
clflush (%rdi)
nop
nop
cmp %r10, %r10
mov $77, %rcx
rep movsl
nop
cmp %r12, %r12
lea addresses_UC_ht+0x18c46, %r12
nop
nop
nop
nop
add $26068, %rdi
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x12226, %rax
clflush (%rax)
nop
and %rdi, %rdi
mov (%rax), %rcx
nop
nop
nop
sub $27189, %r10
lea addresses_WT_ht+0x2b46, %r12
clflush (%r12)
nop
nop
nop
cmp %r10, %r10
mov (%r12), %edi
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xa7c6, %r12
nop
nop
add %r11, %r11
mov (%r12), %rax
nop
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x4be6, %rsi
lea addresses_normal_ht+0xd39e, %rdi
clflush (%rsi)
add $2152, %r11
mov $39, %rcx
rep movsb
add $62492, %r11
lea addresses_normal_ht+0x12046, %r10
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
cmp $49247, %rsi
lea addresses_normal_ht+0xb946, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $33178, %rdi
movb (%rsi), %r10b
nop
nop
and $32675, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x3ec6, %rsi
lea addresses_WC+0x4ce, %rdi
nop
nop
nop
cmp %r8, %r8
mov $48, %rcx
rep movsb
nop
nop
nop
sub $38434, %r8

// Store
lea addresses_RW+0x18446, %rdx
nop
nop
add $14736, %rsi
movl $0x51525354, (%rdx)
xor %rsi, %rsi

// Store
lea addresses_RW+0x2406, %rcx
cmp $59548, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
xor $21400, %rcx

// Store
lea addresses_UC+0xbfe6, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
add $56188, %rcx

// Store
lea addresses_WC+0x1c866, %r12
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
cmp $24049, %rbx

// Load
mov $0xc46, %rdx
nop
nop
nop
nop
nop
inc %rdi
movaps (%rdx), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
xor $49241, %r8

// Faulty Load
lea addresses_RW+0x18446, %r8
nop
sub %r12, %r12
movb (%r8), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'54': 1}
54
*/
