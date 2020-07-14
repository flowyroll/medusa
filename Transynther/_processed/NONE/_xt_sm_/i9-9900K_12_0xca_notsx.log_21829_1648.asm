.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x711b, %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r10), %r11b
nop
nop
nop
nop
and $22236, %r13
lea addresses_normal_ht+0x17159, %rbx
nop
nop
cmp $25087, %rax
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
and $8494, %rdi
lea addresses_D_ht+0x1a4f5, %r11
nop
nop
nop
and %r13, %r13
movw $0x6162, (%r11)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x18af5, %rsi
lea addresses_normal_ht+0x50f5, %rdi
clflush (%rsi)
nop
add %r10, %r10
mov $123, %rcx
rep movsw
add $36163, %rbx
lea addresses_A_ht+0x1035, %rsi
nop
nop
nop
nop
and $23719, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rsi)
nop
add $40132, %r13
lea addresses_D_ht+0x774c, %rbx
nop
nop
nop
and $3279, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x12a75, %rsi
lea addresses_A_ht+0xfb55, %rdi
clflush (%rsi)
nop
and $19556, %r13
mov $26, %rcx
rep movsw
sub $36217, %r14
lea addresses_A_ht+0x11f07, %rsi
lea addresses_UC_ht+0x78f5, %rdi
clflush (%rdi)
nop
sub %rax, %rax
mov $77, %rcx
rep movsb
nop
nop
nop
nop
cmp $55580, %rax
lea addresses_WC_ht+0x139f5, %r13
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r13)
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x8b5, %rsi
cmp $25268, %r14
movl $0x61626364, (%rsi)
inc %rcx
lea addresses_A_ht+0x11395, %rax
nop
nop
nop
and %r10, %r10
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rbx
nop
inc %r10
lea addresses_D_ht+0x1d3ed, %rdi
nop
nop
nop
nop
nop
sub $5382, %r13
movb (%rdi), %cl
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xa325, %rcx
nop
nop
add $33979, %rsi
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
sub $19650, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x10db5, %rsi
lea addresses_WC+0x1a0f5, %rdi
add %rdx, %rdx
mov $2, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x4df5, %r10
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
sub $57312, %rcx

// Store
lea addresses_WT+0x12925, %r10
nop
nop
lfence
movb $0x51, (%r10)
nop
nop
and $10296, %r10

// Store
lea addresses_WC+0x1ae6d, %rdx
clflush (%rdx)
nop
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
add %rdx, %rdx

// Load
lea addresses_WT+0x11f93, %r8
nop
nop
nop
nop
add %rax, %rax
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
and $2011, %rdi

// Store
lea addresses_WT+0x1f0f5, %r10
nop
add %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r10)
nop
add $45991, %rcx

// REPMOV
lea addresses_PSE+0x8e6e, %rsi
lea addresses_D+0x198f5, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $31, %rcx
rep movsq
nop
dec %rdi

// Store
lea addresses_D+0x198f5, %r10
sub %rax, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_D+0x198f5, %r14
inc %rdi
movups (%r14), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_PSE+0x1fe2d, %rdx
clflush (%rdx)
nop
add $18557, %rax
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
xor $14442, %rcx

// Load
mov $0x1339ab000000048d, %rdx
nop
nop
nop
nop
dec %r10
movb (%rdx), %r8b
sub $62341, %r10

// Store
lea addresses_D+0x198f5, %r14
clflush (%r14)
nop
nop
cmp %rdx, %rdx
movw $0x5152, (%r14)
nop
nop
nop
nop
sub $47491, %r14

// Store
lea addresses_D+0x198f5, %rcx
nop
add $43256, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rcx)
cmp $10969, %rdx

// Faulty Load
lea addresses_D+0x198f5, %rax
xor $10483, %rdi
mov (%rax), %edx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
