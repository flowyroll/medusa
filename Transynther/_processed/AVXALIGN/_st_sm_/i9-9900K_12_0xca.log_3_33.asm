.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1af78, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rcx), %r12b
and $47558, %rdx
lea addresses_WT_ht+0x1470c, %r11
nop
nop
nop
nop
add $902, %r14
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x702c, %rsi
lea addresses_D_ht+0x87a0, %rdi
nop
nop
nop
add %r12, %r12
mov $14, %rcx
rep movsb
nop
nop
add $39584, %rcx
lea addresses_UC_ht+0x1bfdc, %rdx
nop
nop
nop
inc %r12
movw $0x6162, (%rdx)
sub $22744, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_WC+0x1d5ac, %r8
nop
nop
nop
cmp $46245, %rax
movntdqa (%r8), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0x68dc, %r13
nop
nop
nop
cmp %r15, %r15
movb $0x51, (%r13)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_normal+0x1489c, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $34248, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
sub $12721, %rbp

// Load
lea addresses_US+0x135f4, %rbp
nop
and %rbx, %rbx
mov (%rbp), %r13w
nop
nop
and %rbx, %rbx

// Store
lea addresses_D+0x68dc, %r8
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
sub $39751, %rbp

// Faulty Load
lea addresses_D+0x68dc, %rsi
and %rax, %rax
movntdqa (%rsi), %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'58': 3}
58 58 58
*/
