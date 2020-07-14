.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x14091, %rsi
lea addresses_D_ht+0x8062, %rdi
nop
nop
nop
xor $58780, %r9
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x3671, %r9
sub %r14, %r14
mov (%r9), %rcx
sub $8952, %r9
lea addresses_normal_ht+0x1bfd1, %rcx
nop
nop
nop
nop
inc %rdi
movw $0x6162, (%rcx)
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x1bf91, %rsi
inc %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0xbef5, %r9
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r9), %esi
sub $19336, %r14
lea addresses_WT_ht+0xca4d, %rsi
nop
add $26167, %r15
mov (%rsi), %r9
add %r14, %r14
lea addresses_D_ht+0x123d1, %rdx
nop
nop
nop
nop
nop
dec %r9
mov (%rdx), %edi
nop
dec %r15
lea addresses_WC_ht+0x1db91, %rsi
lea addresses_WC_ht+0x1de91, %rdi
clflush (%rsi)
clflush (%rdi)
cmp %r13, %r13
mov $97, %rcx
rep movsq
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x13891, %rsi
lea addresses_WT_ht+0x9091, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $15, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WT+0x6891, %rbp
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
sub $30328, %rbx

// Store
lea addresses_WC+0x1e811, %rsi
nop
nop
nop
nop
add $36871, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
nop
sub $7211, %rsi

// Store
lea addresses_D+0x16091, %rax
nop
nop
nop
nop
cmp $57256, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x13319, %r8
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
xor $41015, %rbx

// Store
mov $0x1278020000000b1d, %rsi
nop
sub %r11, %r11
movb $0x51, (%rsi)
sub $28637, %rbp

// Store
lea addresses_WT+0x17691, %r11
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x19331, %rax
nop
nop
add $35721, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_WT+0x6891, %rbp
sub %r11, %r11
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
