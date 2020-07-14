.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6cb6, %rax
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
add $25512, %rax
lea addresses_WT_ht+0x28b6, %rbp
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rbp)
xor $62320, %rbx
lea addresses_A_ht+0x9e68, %r9
nop
nop
add %r15, %r15
mov (%r9), %bx
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x17f86, %r9
clflush (%r9)
cmp %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
add $1502, %rdi
lea addresses_normal_ht+0x16c56, %rsi
lea addresses_WT_ht+0x1e4b6, %rdi
nop
nop
sub %rbx, %rbx
mov $59, %rcx
rep movsl
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1b4b6, %r9
nop
nop
xor $60362, %r15
movl $0x61626364, (%r9)
nop
and %rsi, %rsi
lea addresses_WT_ht+0x116cf, %rbp
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbp)
inc %rax
lea addresses_UC_ht+0x3d7e, %rbp
nop
sub $44197, %r15
mov (%rbp), %bx
add %rsi, %rsi
lea addresses_A_ht+0x14db6, %rsi
xor %rbx, %rbx
mov (%rsi), %rax
nop
inc %rsi
lea addresses_normal_ht+0x5969, %r15
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x130b6, %rsi
nop
nop
nop
nop
nop
xor $25798, %r15
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x10cb6, %rsi
lea addresses_WC_ht+0x14236, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $62, %rcx
rep movsb
nop
add $22525, %rbx
lea addresses_A_ht+0x100b6, %r15
and %rcx, %rcx
mov (%r15), %ebx
nop
nop
xor $49381, %r15
lea addresses_normal_ht+0x140b6, %rsi
clflush (%rsi)
nop
dec %r9
movb $0x61, (%rsi)
inc %rcx
lea addresses_D_ht+0x130b6, %rsi
lea addresses_WC_ht+0x120b6, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $37, %rcx
rep movsq
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x7e04, %rsi
mov $0x4a6cb7000000057e, %rdi
nop
nop
nop
add $63428, %rbp
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
and $64656, %rbx

// Store
mov $0x39af3600000004f6, %r10
nop
nop
nop
add $31904, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r10)
nop
nop
dec %rbx

// Faulty Load
lea addresses_US+0x158b6, %rcx
nop
nop
nop
add $43425, %r13
movb (%rcx), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'00': 1}
00
*/
