.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xe71f, %r15
nop
nop
nop
nop
dec %r11
movb (%r15), %al
nop
dec %rdx
lea addresses_D_ht+0xf7d6, %r12
clflush (%r12)
nop
nop
nop
dec %rcx
movw $0x6162, (%r12)
nop
add $59290, %r12
lea addresses_WT_ht+0x1b70e, %r11
nop
and %rsi, %rsi
mov (%r11), %r15w
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x13d38, %r12
nop
nop
nop
and $44750, %rdx
movb (%r12), %r15b
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x1d166, %rsi
lea addresses_UC_ht+0x165e6, %rdi
clflush (%rdi)
nop
inc %rdx
mov $42, %rcx
rep movsb
cmp $43654, %rax
lea addresses_D_ht+0x18b56, %rsi
lea addresses_A_ht+0x47d6, %rdi
nop
nop
dec %rdx
mov $107, %rcx
rep movsq
dec %rax
lea addresses_A_ht+0x3213, %r15
nop
nop
and %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x6496, %r15
nop
cmp $17220, %rdx
mov (%r15), %cx
add $27469, %rcx
lea addresses_WC_ht+0x10ed6, %rdi
xor $46339, %rsi
movl $0x61626364, (%rdi)
nop
sub $59905, %rcx
lea addresses_A_ht+0x7dd6, %rsi
lea addresses_WT_ht+0x1bf0c, %rdi
inc %r15
mov $17, %rcx
rep movsl
nop
cmp %r15, %r15
lea addresses_D_ht+0x8fd6, %rax
clflush (%rax)
nop
nop
add %r15, %r15
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
inc %rsi
lea addresses_WC_ht+0x89d6, %rcx
clflush (%rcx)
cmp %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rcx)
inc %r12
lea addresses_WC_ht+0x15b8e, %rdx
nop
nop
nop
nop
sub $58998, %r11
mov (%rdx), %r12w
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1ed3c, %rsi
nop
nop
nop
nop
nop
inc %r11
mov (%rsi), %cx
nop
nop
nop
nop
cmp $24453, %r15
lea addresses_normal_ht+0xec02, %rsi
lea addresses_D_ht+0x13fd6, %rdi
nop
nop
nop
nop
and $61430, %r12
mov $98, %rcx
rep movsb
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Load
mov $0xfd6, %rsi
nop
nop
sub $42058, %r15
mov (%rsi), %rax
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_normal+0x167d6, %rsi
nop
nop
inc %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rsi)
nop
nop
sub $63156, %rdx

// Store
mov $0x346, %rdx
clflush (%rdx)
nop
dec %r15
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor %r11, %r11

// Faulty Load
mov $0x77686c0000000fd6, %rbp
nop
nop
nop
cmp %r13, %r13
mov (%rbp), %edx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
