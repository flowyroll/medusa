.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13302, %rcx
nop
nop
nop
and %rax, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
sub $9298, %r11
lea addresses_UC_ht+0x362a, %r8
nop
nop
nop
nop
xor $27148, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r8)
nop
nop
and $46150, %rcx
lea addresses_normal_ht+0xfc0a, %rbp
nop
nop
nop
xor $23850, %r11
movw $0x6162, (%rbp)
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x15112, %rsi
nop
nop
nop
cmp $11024, %r8
mov (%rsi), %r13w
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x1ce5a, %rsi
lea addresses_D_ht+0x18c0a, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r13, %r13
mov $98, %rcx
rep movsw
cmp %r11, %r11
lea addresses_D_ht+0x444a, %r11
nop
nop
nop
and %r13, %r13
mov (%r11), %rax
nop
nop
inc %rax
lea addresses_D_ht+0x920a, %rcx
nop
sub $21885, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
and $27596, %r11
lea addresses_normal_ht+0xea0a, %rdi
nop
nop
nop
nop
inc %r13
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x17c0a, %rax
nop
inc %rcx
movb $0x61, (%rax)
nop
nop
nop
cmp $5121, %r13
lea addresses_normal_ht+0x238e, %rsi
lea addresses_D_ht+0x13792, %rdi
dec %r13
mov $66, %rcx
rep movsl
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_A+0x16872, %rsi
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_PSE+0x1940a, %r13
nop
nop
sub $35196, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r13)
add $37148, %rbp

// Store
lea addresses_normal+0x2cca, %rcx
nop
nop
nop
nop
dec %r12
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
and $1273, %rbp

// Store
lea addresses_PSE+0x440a, %r12
nop
nop
xor $17127, %r14
movb $0x51, (%r12)
nop
sub $49781, %r12

// Store
lea addresses_WT+0x590a, %r14
nop
nop
nop
nop
xor $12636, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
and $33427, %r8

// Store
lea addresses_normal+0x14c0a, %rbp
nop
nop
nop
nop
nop
sub $46934, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
cmp $29688, %r12

// Store
lea addresses_UC+0x1aa00, %rsi
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rsi)
xor $47175, %r8

// Load
lea addresses_PSE+0x1940a, %r14
nop
nop
nop
nop
dec %rsi
mov (%r14), %r12
nop
nop
nop
nop
nop
sub $52816, %r12

// Faulty Load
lea addresses_PSE+0x1940a, %rsi
add %r8, %r8
mov (%rsi), %ecx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
