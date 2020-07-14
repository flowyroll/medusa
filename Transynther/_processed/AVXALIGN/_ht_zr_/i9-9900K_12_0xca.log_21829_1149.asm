.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7a0a, %rdi
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x1f1a, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
movb $0x61, (%rdi)
nop
nop
xor $34825, %r10
lea addresses_UC_ht+0x1397a, %rdi
nop
nop
nop
add $31786, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
cmp $50309, %rdi
lea addresses_normal_ht+0xad7a, %rsi
lea addresses_WT_ht+0x1d7a, %rdi
clflush (%rsi)
nop
nop
nop
xor %r8, %r8
mov $64, %rcx
rep movsl
nop
add $20681, %rsi
lea addresses_A_ht+0x10b7a, %rsi
lea addresses_D_ht+0x1857a, %rdi
nop
and %r12, %r12
mov $2, %rcx
rep movsq
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x457a, %rax
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%rax)
nop
xor $48804, %rax
lea addresses_A_ht+0x1e17a, %rsi
lea addresses_D_ht+0x1365a, %rdi
clflush (%rsi)
nop
nop
nop
dec %r10
mov $5, %rcx
rep movsq
nop
inc %rcx
lea addresses_WC_ht+0x105da, %r8
nop
nop
nop
nop
nop
add $63703, %r12
movb (%r8), %al
nop
nop
inc %rcx
lea addresses_D_ht+0xe17a, %rsi
lea addresses_D_ht+0x11bba, %rdi
clflush (%rdi)
nop
nop
and $21712, %rax
mov $48, %rcx
rep movsl
nop
nop
nop
nop
add $45021, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx

// Faulty Load
lea addresses_US+0xcd7a, %r10
nop
nop
nop
nop
inc %r11
movaps (%r10), %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'44': 14881, '45': 2080, '00': 1, '46': 4867}
46 46 44 45 46 44 46 46 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 46 44 44 44 44 44 44 44 44 44 44 45 46 44 44 44 44 44 46 44 46 46 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 45 46 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 45 46 44 44 44 44 46 46 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 46 46 44 44 44 44 45 46 44 46 44 44 44 44 44 44 44 46 46 46 44 45 46 44 45 46 46 44 44 44 44 44 45 46 44 44 44 44 44 44 44 45 46 44 45 46 44 44 46 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 46 44 44 44 44 44 45 46 44 46 44 46 46 46 44 44 45 46 44 44 44 44 44 46 46 44 44 46 44 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 45 46 46 46 46 44 45 46 44 45 46 46 44 44 44 44 44 44 45 46 46 46 46 46 46 44 44 44 44 44 44 44 44 45 46 44 44 45 46 44 46 46 44 44 44 44 44 45 46 46 44 44 45 46 44 44 44 44 44 44 44 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 45 46 44 46 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 45 46 44 46 44 44 44 46 44 45 46 44 46 46 44 44 44 44 45 46 44 44 45 46 44 44 44 44 44 44 44 44 44 45 45 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 45 46 44 44 44 44 44 44 44 45 46 46 44 45 46 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 45 46 44 46 46 46 44 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 45 46 44 44 45 46 44 46 46 44 45 46 44 45 46 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 45 46 46 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 44 44 44 46 46 46 46 44 44 45 46 45 45 46 46 44 44 45 46 44 44 44 45 46 44 44 44 44 44 46 46 44 44 44 44 45 46 44 46 46 44 44 44 44 45 46 44 46 46 44 44 44 44 44 44 44 44 44 45 46 44 44 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 46 46 46 44 44 44 44 44 46 44 45 46 44 44 44 44 44 44 44 45 46 46 44 44 44 45 46 44 44 44 44 44 44 44 45 46 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 45 46 44 44 45 46 44 44 44 44 45 46 46 45 46 44 45 46 44 46 44 46 46 46 44 44 44 46 44 44 44 44 44 44 45 46 44 46 44 46 46 44 44 45 46 46 46 44 46 46 44 45 46 44 45 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 44 45 46 44 44 44 44 45 46 44 44 44 44 44 44 44 44 44 44 45 46 46 46 46 44 44 44 44 44 45 46 44 44 45 46 46 44 44 44 44 44 44 45 46 44 45 46 44 46 44 45 45 46 44 44 44 44 46 46 44 44 44 44 45 46 44 44 44 44 44
*/
