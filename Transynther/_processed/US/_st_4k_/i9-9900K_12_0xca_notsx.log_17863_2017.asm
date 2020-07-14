.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x112b8, %rsi
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
add $11851, %rdx
lea addresses_WT_ht+0x12978, %r8
nop
nop
nop
nop
nop
xor $1864, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
add $12145, %r8
lea addresses_UC_ht+0x19878, %r8
nop
nop
nop
nop
sub %r14, %r14
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r13
nop
dec %rsi
lea addresses_WT_ht+0x18378, %r8
nop
nop
nop
nop
nop
and $31075, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r8)
sub $57180, %r14
lea addresses_A_ht+0x4dd8, %r13
clflush (%r13)
nop
nop
nop
nop
nop
cmp %r8, %r8
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x167b8, %rsi
lea addresses_WC_ht+0x17f78, %rdi
and $12317, %r8
mov $99, %rcx
rep movsq
nop
sub %r13, %r13
lea addresses_D_ht+0x5178, %r13
nop
nop
sub $58678, %r8
mov (%r13), %rdi
nop
and $5541, %rbx
lea addresses_WC_ht+0x1e550, %r14
cmp $37193, %r8
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
and $46752, %r14
lea addresses_D_ht+0x3fd6, %rsi
lea addresses_UC_ht+0x15a78, %rdi
nop
nop
nop
nop
cmp $27142, %r14
mov $70, %rcx
rep movsw
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xbd78, %rsi
lea addresses_WC_ht+0x18048, %rdi
nop
inc %r14
mov $0, %rcx
rep movsb
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0xde36, %rsi
lea addresses_D_ht+0x9d78, %rdi
nop
nop
nop
dec %r13
mov $28, %rcx
rep movsw
nop
nop
and $49611, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rdi
push %rsi

// Store
lea addresses_normal+0x14d78, %r9
nop
nop
nop
nop
xor $46789, %r14
movw $0x5152, (%r9)
nop
nop
dec %rsi

// Load
lea addresses_RW+0x18e14, %r14
nop
nop
nop
nop
sub %r11, %r11
movups (%r14), %xmm7
vpextrq $1, %xmm7, %r9
xor $11010, %r14

// Load
lea addresses_US+0xc578, %r11
nop
nop
nop
nop
add $59704, %r13
movups (%r11), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_D+0x1c4a8, %r12
clflush (%r12)
nop
nop
nop
nop
cmp %r13, %r13
mov (%r12), %edi
nop
nop
cmp $60527, %rdi

// Store
lea addresses_normal+0x2578, %rsi
nop
nop
nop
nop
nop
add %r9, %r9
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp $45835, %r13

// Store
mov $0x20b4f30000000778, %r11
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%r11)
nop
nop
nop
dec %r12

// Store
lea addresses_D+0x1bb78, %rsi
and $63856, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
inc %r9

// Store
lea addresses_PSE+0x11d78, %r12
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
and $43073, %rsi

// Load
lea addresses_normal+0x19778, %r9
nop
nop
nop
nop
nop
cmp $40880, %r11
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
xor $20432, %r13

// Faulty Load
lea addresses_US+0xc578, %r9
add %r13, %r13
mov (%r9), %r14d
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'51': 17863}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
