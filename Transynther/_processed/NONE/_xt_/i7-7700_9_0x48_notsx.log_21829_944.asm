.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5d07, %r12
cmp $28106, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
nop
add %r9, %r9
lea addresses_normal_ht+0x60cd, %r11
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r11)
nop
nop
add $38849, %rbx
lea addresses_WC_ht+0x17319, %rsi
lea addresses_normal_ht+0x9cb2, %rdi
nop
nop
nop
nop
xor $11820, %r9
mov $1, %rcx
rep movsb
nop
nop
nop
nop
and $12172, %rdi
lea addresses_UC_ht+0x188d9, %rcx
nop
cmp $10513, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor $61989, %rdi
lea addresses_UC_ht+0x18b79, %r11
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%r11)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0xb6d5, %rsi
lea addresses_D_ht+0x1cef9, %rdi
clflush (%rdi)
nop
and %rbx, %rbx
mov $46, %rcx
rep movsq
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x3799, %rbx
cmp %r11, %r11
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
add $6201, %r9
lea addresses_WC_ht+0x193f9, %r9
nop
nop
nop
nop
nop
inc %r11
mov (%r9), %rdi
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x167f9, %rsi
lea addresses_WT_ht+0x8e79, %rdi
nop
xor %r9, %r9
mov $75, %rcx
rep movsw
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x3659, %r11
nop
nop
xor %rax, %rax
mov (%r11), %esi
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x12a11, %rbx
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x12f92, %rdi
and $55928, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %rdi
movntdq %xmm3, (%rdi)
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x192f9, %r8
nop
nop
nop
nop
sub $64724, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r8)
nop
dec %rax

// Store
lea addresses_PSE+0xecd9, %rsi
nop
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_A+0xe079, %r8
nop
nop
nop
add %r10, %r10
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
nop
sub $65091, %r8

// Store
lea addresses_A+0x64d9, %r8
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_PSE+0x1c609, %rcx
nop
nop
inc %rsi
movb $0x51, (%rcx)
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_A+0xe079, %r11
nop
nop
and %r10, %r10
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
