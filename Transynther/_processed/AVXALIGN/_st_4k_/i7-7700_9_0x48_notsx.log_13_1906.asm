.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rcx
push %rdi
lea addresses_D_ht+0x16e33, %r12
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
inc %rcx
pop %rdi
pop %rcx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0xdb61, %rsi
lea addresses_D+0x1dc09, %rdi
nop
nop
nop
and %rdx, %rdx
mov $123, %rcx
rep movsw
add %rdx, %rdx

// Store
mov $0x30d, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and $61916, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r8)
cmp %rdi, %rdi

// Store
lea addresses_normal+0x4609, %rcx
nop
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovntdq %ymm6, (%rcx)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_PSE+0x18e09, %rax
nop
nop
nop
nop
nop
cmp $28567, %rcx
movb $0x51, (%rax)
cmp %rdx, %rdx

// Store
lea addresses_US+0xc439, %r11
nop
nop
nop
add $44204, %rdx
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
sub %rcx, %rcx

// Load
lea addresses_PSE+0xdd89, %rcx
nop
nop
xor $20099, %rdi
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Load
mov $0x7d148d0000000981, %rdx
nop
nop
nop
nop
and %r8, %r8
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
nop
add $15408, %rsi

// Load
lea addresses_A+0x1af49, %rcx
nop
dec %r8
mov (%rcx), %ax
nop
nop
xor %r11, %r11

// Store
lea addresses_WC+0x18a00, %rdi
nop
nop
nop
and $56859, %rax
movw $0x5152, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_normal+0x6a84, %r11
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_US+0xf609, %rsi
cmp $8012, %rdx
mov (%rsi), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'58': 13}
58 58 58 58 58 58 58 58 58 58 58 58 58
*/
