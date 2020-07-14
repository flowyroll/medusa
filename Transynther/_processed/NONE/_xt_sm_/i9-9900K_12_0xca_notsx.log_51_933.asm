.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x4998, %rsi
lea addresses_UC_ht+0x6f38, %rdi
clflush (%rsi)
sub $25648, %r15
mov $25, %rcx
rep movsb
nop
nop
nop
sub $26703, %rdx
lea addresses_D_ht+0xe240, %r10
xor $55807, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
cmp $42866, %rdi
lea addresses_D_ht+0x17538, %rsi
lea addresses_A_ht+0xb338, %rdi
nop
cmp %r11, %r11
mov $91, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0xc5e, %r11
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
and $1830, %r10
lea addresses_normal_ht+0x1a1a0, %rsi
nop
nop
nop
nop
add %rdi, %rdi
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r11
add %rsi, %rsi
lea addresses_WC_ht+0xf38, %rdi
nop
dec %rdx
mov (%rdi), %r15w
cmp $22649, %r11
lea addresses_D_ht+0x11738, %rcx
nop
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x159ca, %rsi
lea addresses_WC_ht+0x6328, %rdi
inc %r11
mov $36, %rcx
rep movsb
nop
and $59649, %r15
lea addresses_A_ht+0x1af38, %rdx
clflush (%rdx)
xor $14328, %rsi
mov (%rdx), %cx
nop
nop
and $9476, %r11
lea addresses_UC_ht+0xe138, %rdi
add %r10, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1238, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $11802, %r10
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $41377, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x7038, %rsi
lea addresses_WT+0xe738, %rdi
nop
nop
inc %rax
mov $98, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_RW+0x18bb8, %r9
clflush (%r9)
xor $20232, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
cmp $64972, %r12

// Store
lea addresses_normal+0x13b38, %rax
nop
cmp $48857, %rsi
movb $0x51, (%rax)
nop
xor %rax, %rax

// Store
lea addresses_D+0x7b28, %rdi
nop
nop
xor $50789, %r12
movb $0x51, (%rdi)
cmp $39887, %rdi

// Store
mov $0x6e5ead0000000758, %r9
inc %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
add $59362, %r9

// Store
lea addresses_normal+0x6738, %rsi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
add %rcx, %rcx

// Faulty Load
lea addresses_normal+0x6738, %rbx
nop
and $15251, %rcx
mov (%rbx), %edi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'58': 51}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
