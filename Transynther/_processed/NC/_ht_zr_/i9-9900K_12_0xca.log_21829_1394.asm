.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16d1a, %r9
sub $6862, %rsi
mov (%r9), %eax
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0xa646, %r9
nop
nop
nop
nop
nop
and $6155, %r11
movb (%r9), %r12b
nop
nop
add $17878, %rsi
lea addresses_A_ht+0x18396, %rbp
nop
dec %rdi
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
xor $57531, %r9
lea addresses_D_ht+0x8653, %rax
nop
nop
nop
nop
xor %r12, %r12
mov (%rax), %r11w
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x7896, %r9
nop
nop
dec %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r9)
add %r12, %r12
lea addresses_A_ht+0x105c4, %rsi
lea addresses_A_ht+0xf3b4, %rdi
nop
nop
cmp $36298, %rbp
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $4141, %rax
lea addresses_D_ht+0xef72, %rsi
nop
xor $2525, %rcx
mov (%rsi), %r9
cmp %rax, %rax
lea addresses_UC_ht+0x1abfe, %r9
nop
and %rbp, %rbp
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
nop
cmp $45285, %r12
lea addresses_normal_ht+0x10396, %rsi
lea addresses_A_ht+0x70dc, %rdi
nop
and $34168, %r9
mov $15, %rcx
rep movsq
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x1cd76, %rax
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r14
movq %r14, (%rax)
add %rax, %rax

// Store
lea addresses_RW+0x10296, %rdx
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdx)
nop
add $7486, %rbx

// Store
lea addresses_RW+0x5d32, %r14
clflush (%r14)
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_D+0x12196, %r10
and $55674, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r10)
nop
nop
cmp %r14, %r14

// Faulty Load
mov $0x3b8ba30000000f96, %rsi
nop
nop
add $13660, %r10
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'44': 13596, '45': 1978, '00': 5754, '47': 501}
44 44 44 44 44 00 44 44 00 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 00 00 44 00 44 00 00 00 44 44 00 44 44 44 44 00 44 44 00 44 00 44 45 44 00 45 44 44 44 44 44 00 44 44 00 44 44 00 45 44 44 44 44 00 44 00 00 00 45 44 00 00 44 44 00 44 44 44 44 00 44 00 45 44 00 00 44 00 44 45 44 44 44 00 44 00 44 44 44 44 00 00 00 44 44 44 45 44 47 44 00 44 44 44 44 00 44 45 44 44 44 44 44 44 47 44 45 44 47 44 44 00 44 00 44 45 44 45 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 00 44 44 44 47 44 44 44 44 00 44 44 00 00 00 00 44 00 44 00 44 00 44 45 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 45 44 44 44 44 44 45 44 44 44 44 44 45 44 00 00 45 44 44 44 44 00 45 44 44 00 44 00 44 47 44 00 44 44 44 00 44 00 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 00 00 00 44 00 45 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 45 44 44 44 00 44 44 00 44 44 44 00 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 45 44 00 00 44 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 44 45 44 00 44 44 00 44 44 44 44 44 00 00 00 44 44 00 45 00 44 00 00 44 44 44 44 00 44 44 44 45 44 44 00 44 00 44 44 45 44 44 44 44 44 00 44 44 44 45 44 00 44 00 44 44 00 00 00 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 45 44 44 44 44 00 45 44 44 00 44 44 44 00 44 00 44 00 44 00 44 45 44 44 00 00 45 44 45 44 44 44 00 00 44 45 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 45 44 44 45 44 45 44 45 44 44 00 44 45 44 00 44 44 00 44 44 44 45 44 44 00 00 44 00 45 44 00 44 47 44 00 00 00 44 44 44 00 45 44 45 44 44 44 44 44 44 44 44 00 44 00 44 00 44 00 00 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 00 44 45 44 44 00 00 44 44 44 00 00 44 00 00 44 44 44 00 44 45 00 44 00 44 44 00 44 44 44 00 44 00 00 00 45 44 44 44 00 00 44 00 44 00 44 00 44 44 44 00 45 44 44 44 44 44 00 44 44 44 44 44 47 44 00 00 00 44 00 00 00 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 45 45 44 00 00 44 44 44 44 44 45 44 44 00 44 47 44 00 00 00 00 44 00 44 44 44 44 44 00 45 44 45 44 44 44 00 44 00 00 44 44 44 44 00 44 44 44 00 44 44 45 44 44 00 44 44 44 00 45 44 44 00 00 00 44 44 00 44 45 44 00 44 00 44 44 44 00 00 00 45 44 00 00 44 00 44 00 44 00 44 00 44 44 44 00 44 00 00 44 00 00 00 44 00 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 00 00 00 00 00 44 00 44 45 44 45 44 00 00 44 44 44 00 44 00 44 45 44 45 44 44 44 44 44 00 00 44 00 44 44 00 44 44 44 44 00 45 44 44 44 44 00 00 44 00 44 44 44 44 44 00 44 00 44 44 44 00 44 00 44 00 44 00 44 45 44 00 44 44 44 44 44 00 45 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 45 44 44 00 44 00 44 45 45 44 44 45 44 44 44 00 00 00 00 00 45 44 44 00 44 00 00 44 44 44 00 44 44 44 44 00 44 44 44 45 44 00 44 00 44 44 44 44 44 44 00 45 44 44 00 44 44 44 44 00 44 44 44 00 00 44 44 44 47 44 00 00 44 44 44 45 44 00 44 00 44 44 00 44 44 00 00 44 00 44 00 44 44 00 44 44 44 00 45 44 00 00 44 44 00 44
*/
