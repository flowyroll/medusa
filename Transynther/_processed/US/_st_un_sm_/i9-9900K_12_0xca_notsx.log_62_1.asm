.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19cd7, %r12
clflush (%r12)
nop
nop
nop
cmp $46369, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x1db01, %rsi
lea addresses_WC_ht+0xfb1, %rdi
nop
nop
lfence
mov $121, %rcx
rep movsb
and $24731, %rbx
lea addresses_UC_ht+0x8911, %rcx
mfence
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
sub %r12, %r12
lea addresses_A_ht+0xd071, %rdi
sub $46304, %r12
mov (%rdi), %ebx
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0xd9b1, %r14
nop
nop
nop
nop
cmp $51417, %rbx
movw $0x6162, (%r14)
nop
nop
nop
nop
cmp $16877, %r15
lea addresses_WT_ht+0x5719, %rsi
lea addresses_A_ht+0x81b1, %rdi
clflush (%rsi)
nop
nop
nop
xor $34617, %r13
mov $91, %rcx
rep movsq
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0xac03, %r12
nop
nop
nop
cmp $5405, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0xf231, %r12
clflush (%r12)
xor %r14, %r14
mov (%r12), %esi
nop
nop
nop
inc %r13
lea addresses_WT_ht+0xb4d1, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $54429, %rbx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
add $50048, %rsi
lea addresses_UC_ht+0xdc76, %r12
nop
add %r13, %r13
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x2df9, %r12
nop
nop
cmp %r15, %r15
mov (%r12), %esi
nop
nop
nop
nop
nop
add $8450, %rcx
lea addresses_UC_ht+0x2017, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %r14, %r14
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
xor $32753, %rbx
lea addresses_D_ht+0x1b2d1, %rsi
lea addresses_UC_ht+0x1b211, %rdi
nop
cmp %r14, %r14
mov $125, %rcx
rep movsl
nop
add $6956, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0x9b1, %r12
nop
sub $808, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movaps %xmm7, (%r12)
nop
nop
nop
nop
nop
inc %rdx

// Store
mov $0x77fb550000000451, %rsi
nop
nop
nop
nop
nop
sub $9676, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
and $17577, %rbx

// Faulty Load
lea addresses_US+0x9b1, %r13
nop
nop
nop
cmp %r12, %r12
movb (%r13), %r11b
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'7a': 1, 'fc': 1, '32': 1, '0c': 1, '92': 1, 'c6': 1, '08': 1, 'c0': 1, 'da': 1, 'e6': 2, 'ac': 1, '58': 41, 'de': 1, '34': 1, 'c4': 1, '6c': 1, 'fa': 1, '20': 1, '5e': 1, 'f0': 1, 'f8': 1}
58 58 58 f8 58 58 58 c0 c6 58 0c 58 da 58 58 58 58 58 92 58 32 5e 58 58 08 7a f0 58 58 58 58 58 e6 c4 58 58 58 fc e6 58 58 58 58 58 20 de 58 58 ac 58 58 58 58 58 34 58 6c 58 58 fa 58 58
*/
