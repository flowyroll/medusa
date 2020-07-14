.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1f6f, %rsi
lea addresses_A_ht+0xc4f, %rdi
nop
nop
nop
nop
add $57105, %rbp
mov $121, %rcx
rep movsw
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1eed7, %r9
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%r9)
nop
inc %rdx
lea addresses_D_ht+0x5faf, %rcx
xor $61840, %rdx
movb $0x61, (%rcx)
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1886f, %rcx
nop
nop
dec %r8
movb (%rcx), %r9b
nop
nop
nop
add $14299, %rcx
lea addresses_UC_ht+0x9eb, %rbp
clflush (%rbp)
nop
nop
nop
dec %rdi
movb $0x61, (%rbp)
nop
nop
nop
cmp $9878, %r9
lea addresses_WT_ht+0x1902f, %rsi
lea addresses_normal_ht+0x1e36f, %rdi
clflush (%rdi)
nop
nop
nop
and $43849, %r9
mov $115, %rcx
rep movsl
cmp %rbp, %rbp
lea addresses_D_ht+0xcb6f, %r8
and %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
nop
sub $744, %rbp
lea addresses_WC_ht+0x1206f, %rsi
lea addresses_normal_ht+0x1a43d, %rdi
nop
nop
nop
xor %r8, %r8
mov $47, %rcx
rep movsw
nop
and $48173, %r9
lea addresses_D_ht+0x1cf6f, %rdi
nop
nop
nop
nop
dec %r9
movl $0x61626364, (%rdi)
nop
and %rbp, %rbp
lea addresses_WT_ht+0x18def, %r8
nop
nop
and $42152, %rsi
mov (%r8), %r9w
nop
nop
nop
nop
sub $45697, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x3cced900000004ef, %rsi
nop
nop
nop
nop
cmp $18852, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
cmp %r15, %r15

// Store
mov $0x96f, %rdx
nop
dec %r11
movb $0x51, (%rdx)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_A+0x34af, %rdx
sub %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
add $12682, %rsi

// Store
lea addresses_normal+0x12a2f, %rcx
nop
xor $50680, %r15
movw $0x5152, (%rcx)
nop
nop
dec %rcx

// Load
lea addresses_normal+0xf917, %r15
sub %rdi, %rdi
mov (%r15), %ecx
cmp $53304, %r11

// Store
lea addresses_PSE+0x776f, %rdx
nop
dec %rsi
movl $0x51525354, (%rdx)
nop
and $11885, %rcx

// Faulty Load
lea addresses_PSE+0x2f6f, %rcx
nop
cmp %rdi, %rdi
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'33': 6}
33 33 33 33 33 33
*/
