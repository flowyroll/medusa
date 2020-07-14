.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rcx
push %rsi
lea addresses_normal_ht+0xfaa2, %r14
nop
nop
xor %r9, %r9
movb (%r14), %r13b
nop
nop
nop
nop
sub $3552, %rcx
pop %rsi
pop %rcx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x17e22, %rsi
lea addresses_normal+0xcaa2, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $25, %rcx
rep movsw
nop
nop
nop
inc %rdi

// Load
lea addresses_PSE+0x9ce4, %rcx
clflush (%rcx)
add $64221, %rdi
mov (%rcx), %r10

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
add $36172, %rdi

// Store
lea addresses_RW+0x1d0a2, %rax
nop
add %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rax)
add %r10, %r10

// Load
mov $0xb14, %rax
clflush (%rax)
nop
and $56465, %r10
mov (%rax), %r11
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WC+0x122a2, %rsi
nop
nop
nop
cmp $46009, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
xor %r15, %r15

// Store
mov $0x337ce300000004a2, %r15
dec %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r15)
and %r10, %r10

// Faulty Load
lea addresses_WT+0x8aa2, %rsi
clflush (%rsi)
and %r11, %r11
movaps (%rsi), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'00': 18, '33': 23}
00 00 33 33 33 33 33 00 00 33 33 00 00 33 00 33 00 33 00 33 33 00 33 33 00 33 33 00 00 33 00 00 33 33 00 00 33 00 33 33 33
*/
