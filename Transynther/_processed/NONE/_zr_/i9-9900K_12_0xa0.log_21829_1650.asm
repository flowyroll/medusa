.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1deec, %r14
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1b06c, %rbp
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
and $0xffffffffffffffc0, %rbp
vmovaps %ymm1, (%rbp)
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x806c, %rax
nop
nop
add %r13, %r13
movups (%rax), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
and $34534, %rbx
lea addresses_normal_ht+0x2c4c, %rsi
nop
nop
nop
cmp $55317, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x4a85, %r14
nop
sub $21949, %rax
movb $0x61, (%r14)
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0xe524, %rbx
add $20197, %r14
mov (%rbx), %esi
nop
nop
nop
nop
xor $6385, %rax
lea addresses_UC_ht+0x10f44, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1110, %rsi
lea addresses_D_ht+0xaf6c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $30764, %r13
mov $119, %rcx
rep movsq
nop
nop
nop
nop
and $47164, %rbx
lea addresses_A_ht+0x19b6c, %rbp
nop
nop
nop
nop
nop
xor $18528, %r14
movb $0x61, (%rbp)
nop
lfence
lea addresses_D_ht+0x1ee6c, %rsi
lea addresses_UC_ht+0x1406c, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $25, %rcx
rep movsl
nop
nop
and $482, %rbp
lea addresses_WC_ht+0xed6c, %rcx
cmp $6252, %rax
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
cmp $7493, %r15
lea addresses_normal_ht+0x180d8, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
sub $1003, %rbp
lea addresses_D_ht+0x10a66, %rax
nop
nop
nop
nop
and %rcx, %rcx
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x72ac, %rsi
lea addresses_UC_ht+0x18c6c, %rdi
clflush (%rdi)
inc %rax
mov $57, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $52959, %rbp
lea addresses_WC_ht+0xc17c, %rsi
lea addresses_WC_ht+0x8cc4, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $56, %rcx
rep movsq
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x6c7c, %rax
clflush (%rax)
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
cmp $45802, %r9

// Store
lea addresses_PSE+0xe06c, %r15
sub $47559, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r15)

// Exception!!!
mov (0), %r15
nop
dec %r15

// Faulty Load
lea addresses_PSE+0xe06c, %r9
clflush (%r9)
nop
add $32207, %r15
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
