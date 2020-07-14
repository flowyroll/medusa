.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x45fc, %rax
nop
nop
nop
nop
add $52749, %rbp
movw $0x6162, (%rax)
inc %r11
lea addresses_UC_ht+0x31fc, %rsi
lea addresses_normal_ht+0x1e93c, %rdi
cmp $10404, %rdx
mov $49, %rcx
rep movsq
nop
nop
nop
nop
sub $48767, %r9
lea addresses_A_ht+0xc72c, %rsi
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
and $33619, %rdx
lea addresses_normal_ht+0x1483c, %r11
nop
nop
and %rbp, %rbp
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm1
vpextrq $1, %xmm1, %rdi
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x12ae2, %rsi
lea addresses_A_ht+0x11e3c, %rdi
nop
nop
nop
add %rdx, %rdx
mov $46, %rcx
rep movsb
nop
nop
inc %rdx
lea addresses_UC_ht+0x1757c, %rsi
lea addresses_normal_ht+0x11574, %rdi
nop
nop
nop
xor $43463, %rax
mov $73, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1a11c, %rsi
lea addresses_normal_ht+0xba3c, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x131ec, %rsi
lea addresses_WC_ht+0xb03c, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $74, %rcx
rep movsl
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x665c, %rsi
lea addresses_A_ht+0x1363c, %rdi
nop
nop
and $10493, %rbp
mov $23, %rcx
rep movsw
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1243c, %rcx
nop
nop
nop
xor %rax, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
xor $43082, %rdx
lea addresses_normal_ht+0x743c, %rsi
nop
nop
nop
xor %r9, %r9
mov (%rsi), %edi
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0xf43c, %rdx
and $42198, %r9
movl $0x61626364, (%rdx)
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_WT+0x1443c, %r8
sub $56482, %r14
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_PSE+0xb83c, %r13
nop
nop
nop
nop
nop
xor %r14, %r14
movl $0x51525354, (%r13)
nop
and $20720, %r13

// Store
lea addresses_A+0x107fc, %r13
cmp %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
xor $8010, %rdx

// Load
lea addresses_normal+0x1fc3c, %r8
nop
nop
nop
nop
cmp $14125, %rax
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
add $62063, %rax

// Faulty Load
lea addresses_WT+0x1443c, %r8
nop
add $4210, %rdx
mov (%r8), %bx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 10}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
