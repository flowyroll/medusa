.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
lea addresses_D_ht+0x10dca, %rax
nop
inc %r9
mov (%rax), %r13
nop
nop
sub $35822, %r9
lea addresses_WT_ht+0x8042, %rax
nop
nop
nop
xor $52583, %r12
movw $0x6162, (%rax)
nop
nop
nop
sub $7940, %rbx
lea addresses_A_ht+0xa331, %rbp
clflush (%rbp)
sub $7065, %r8
mov (%rbp), %r12
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x5cbe, %r9
and %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
nop
nop
cmp $44365, %r12
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x5e1e, %rsi
lea addresses_A+0xbb1e, %rdi
nop
sub $38180, %rbp
mov $96, %rcx
rep movsw
xor $64720, %rdx

// REPMOV
lea addresses_WC+0x1016e, %rsi
lea addresses_WC+0x1921e, %rdi
clflush (%rsi)
clflush (%rdi)
nop
inc %r10
mov $35, %rcx
rep movsq
dec %rdi

// Store
lea addresses_WT+0x4a1e, %rdi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
and $21667, %rdi

// Store
lea addresses_WT+0x1fcd7, %rsi
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%rsi)
nop
add $25055, %rbp

// REPMOV
lea addresses_WC+0x1921e, %rsi
lea addresses_WC+0x1981e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r9, %r9
mov $53, %rcx
rep movsl
nop
xor %r9, %r9

// Store
lea addresses_A+0x1e, %r10
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r10
vmovntdq %ymm4, (%r10)
nop
nop
nop
nop
nop
cmp $11277, %r10

// Load
lea addresses_PSE+0x1e8ee, %rcx
nop
nop
nop
nop
inc %rdx
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x1d8ee, %rbp
cmp $13550, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
add %r11, %r11

// Faulty Load
lea addresses_WC+0x1921e, %r10
nop
nop
nop
nop
inc %rdi
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_PSE'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WC'}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
